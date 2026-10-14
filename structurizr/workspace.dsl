workspace {
    model {
        operator = person "營運人員" "設定每次預購活動期間，以及每位買家可抽選的玩具總量。"
        buyer = person "買家" "透過代理商既有的實名制 App 登記玩具並選擇取貨門市。"
        system = softwareSystem "玩具預購抽選服務" "管理預購活動、買家登記、抽選結果與取貨門市選擇。"
        realNameApp = softwareSystem "代理商既有實名制 App" "負責買家登入與實名驗證，並提供買家操作介面。" "External System"
        storePickupSystem = softwareSystem "代理商既有門市取貨系統" "接收中籤名單與取貨門市，供代理商安排取貨。" "External System"

        operator -> system "設定預購活動"
        buyer -> realNameApp "登記玩具並選擇取貨門市"
        realNameApp -> system "送出已完成實名驗證的抽選登記"
        system -> realNameApp "傳送抽選結果並取得取貨門市"
        system -> storePickupSystem "送出中籤名單與取貨門市"
    }

    views {
        systemContext system "SystemContext" {
            include *
            include buyer
            autoLayout lr
        }
        theme https://raw.githubusercontent.com/structurizr/themes/master/default/theme.json
        styles {
            element "External System" {
                background #999999
                color #ffffff
            }
        }
    }

    configuration {
        scope softwareSystem
    }
}
