workspace "玩具預購抽選服務" "C4 工作坊" {
    model {
        buyer = person "買家" "想買熱門玩具的人，透過代理商的實名制 App 登記。"
        operator = person "營運人員" "設定活動時間，以及每個買家最多可以抽幾個玩具。"

        preorderSystem = softwareSystem "預購抽選系統" "讓買家登記玩具，在活動截止時抽出結果，並處理取貨門市。" {
            !adrs adrs
            adminWeb = container "管理後台" "讓營運人員設定活動時間、抽選數量、玩具和取貨門市。" "React / Web 瀏覽器"
            preorderApi = container "預購 API" "接收登記和取貨門市選擇，也提供管理後台使用。" "Node.js / Express REST API" {
                authGuard = component "憑證驗證中介層" "先確認請求真的來自已完成實名驗證的 App。" "TypeScript Middleware"
                campaignService = component "活動規則服務" "管理活動時間，並檢查每個買家可以抽幾個玩具。" "TypeScript Service"
                registrationService = component "登記服務" "記錄買家想抽的玩具，也提供抽選結果查詢。" "TypeScript Service"
                pickupService = component "取貨服務" "記錄中籤買家選的門市，並通知門市取貨系統。" "TypeScript Service"
            }
            lotteryJob = container "抽選排程" "活動截止時讀取登記、抽籤、存結果，再請 App 通知買家。" "Node.js / 排程工作"
            preorderDb = container "預購資料庫" "保存活動設定、買家登記、抽選結果和取貨門市。" "PostgreSQL"
        }
        realnameApp = softwareSystem "代理商既有實名制 App" "代理商已經有的 App，負責登入、實名驗證和推播通知。" "External System"
        storeSystem = softwareSystem "代理商既有門市取貨系統" "代理商已經有的系統，依中籤名單和門市安排取貨。" "External System"

        buyer -> realnameApp "在 App 裡登記、看結果、選取貨門市"
        realnameApp -> authGuard "送出已完成實名驗證的預購請求" "HTTPS"
        authGuard -> registrationService "驗證通過後交給登記服務"
        authGuard -> pickupService "驗證通過後交給取貨服務"
        registrationService -> campaignService "查詢活動時間和每人抽選上限"
        pickupService -> campaignService "查詢可以選的取貨門市"
        operator -> adminWeb "設定活動和抽選規則"
        adminWeb -> campaignService "讀寫活動設定" "HTTPS"
        campaignService -> preorderDb "讀寫活動設定" "SQL"
        registrationService -> preorderDb "寫入登記、讀取抽選結果" "SQL"
        pickupService -> preorderDb "寫入取貨門市" "SQL"
        pickupService -> storeSystem "送出中籤名單和取貨門市" "HTTPS"
        lotteryJob -> preorderDb "讀取登記、寫入抽選結果" "SQL"
        lotteryJob -> realnameApp "請 App 推播抽選結果" "HTTPS"

        production = deploymentEnvironment "正式環境" {
            cloud = deploymentNode "雲端區域" "我們使用的雲端服務。" "AWS ap-northeast-1" {
                tags "Amazon Web Services - Region"
                ecs = deploymentNode "ECS Fargate" "執行預購 API，不用自己管理伺服器。" "AWS Fargate" {
                    tags "Amazon Web Services - Fargate"
                    apiInstance = containerInstance preorderApi
                }
                scheduler = deploymentNode "EventBridge 排程任務" "在活動截止時啟動抽選工作。" "AWS EventBridge + Fargate 任務" {
                    tags "Amazon Web Services - EventBridge"
                    jobInstance = containerInstance lotteryJob
                }
                rds = deploymentNode "RDS for PostgreSQL" "託管資料庫，只用一個可用區來省成本。" "PostgreSQL 16" {
                    tags "Amazon Web Services - RDS"
                    dbInstance = containerInstance preorderDb
                }
            }
            office = deploymentNode "代理商辦公室" "營運人員工作的地方。" "辦公室網路" {
                browser = deploymentNode "營運人員電腦" "用瀏覽器開啟管理後台。" "Web 瀏覽器" {
                    adminInstance = containerInstance adminWeb
                }
            }
            agentEnv = deploymentNode "代理商既有系統環境" "代理商自己維護的系統，我們只使用它們。" "代理商機房" {
                appHost = deploymentNode "實名制 App 服務" "代理商既有的實名制 App 後端。" "既有系統" {
                    realnameInstance = softwareSystemInstance realnameApp
                }
                storeHost = deploymentNode "門市取貨系統主機" "代理商既有的門市取貨系統。" "既有系統" {
                    storeInstance = softwareSystemInstance storeSystem
                }
            }
        }
    }

    views {
        systemLandscape "SystemLandscape" {
            include *
            autoLayout lr
        }
        systemContext preorderSystem "SystemContext" {
            include *
            include buyer
            autoLayout lr
        }
        container preorderSystem "Containers" {
            include *
            include buyer
            autoLayout lr
        }
        component preorderApi "Components" {
            include *
            autoLayout lr
        }
        dynamic preorderSystem "PreorderFlow" "一場預購活動從設定、登記、抽選到取貨的完整流程。" {
            operator -> adminWeb "1. 設定活動時間和每人抽選上限"
            buyer -> realnameApp "2. 在活動期間登記想抽的玩具"
            realnameApp -> preorderApi "3. 把已完成實名驗證的登記送來" "HTTPS"
            preorderApi -> preorderDb "4. 檢查規則並保存登記" "SQL"
            lotteryJob -> preorderDb "5. 截止時讀取登記、抽選並保存結果" "SQL"
            lotteryJob -> realnameApp "6. 請 App 推播抽選結果" "HTTPS"
            buyer -> realnameApp "7. 中籤後選擇取貨門市"
            realnameApp -> preorderApi "8. 把取貨門市選擇送來" "HTTPS"
            preorderApi -> storeSystem "9. 把中籤名單和取貨門市送給門市系統" "HTTPS"
            autoLayout lr
        }
        deployment * "正式環境" "Deployment" "每個服務在正式環境中的位置。" {
            include *
        }
        styles {
            element "External System" {
                background #999999
                color #ffffff
            }
        }
        themes https://raw.githubusercontent.com/structurizr/themes/master/default/theme.json https://raw.githubusercontent.com/structurizr/structurizr/v2026.09.19/structurizr-themes/amazon-web-services-2025.07/theme.json
    }

    configuration {
        scope softwareSystem
    }
}
