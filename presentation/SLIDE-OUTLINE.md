# HWDC 2026 — Slide Outline

> 每頁只設定一個核心目的。來源標記：`Summary`、`Notes`、`README`、`Artifact`、`Photo`。圖片實際狀態以 `IMAGE-MANIFEST.md` 為準。

## Cover / Overview

### S001 — 技術收穫與實戰筆記
- **章節：** Cover
- **目的：** 將兩天 13 場課程收斂成「AI 進入工程後，如何被邊界、證據與驗證控制」的主題。
- **來源：** Summary
- **內容：** HWDC 2026、日期、技術主題與一句話摘要。
- **主視覺／版型：** Dark editorial cover；以細線資料流與小型 session timeline 作背景，不使用課程照片。
- **限制：** 只作敘事定位，不宣稱完整參與所有課程。
- **敘事：** 起點；下一頁交代資料範圍。

### S002 — 兩天、13 場、四種證據
- **章節：** Conference Overview
- **目的：** 讓讀者知道簡報如何整理多來源內容。
- **來源：** Summary + README + Notes
- **內容：** 13 個資料夾、兩天時間軸、實際筆記／Artifact／官方背景／後續建議四層證據。
- **主視覺／版型：** Light timeline + evidence legend；可使用一張會場 Context 圖。
- **限制：** 時段重疊與未參加場次要在圖例中標示。
- **敘事：** 承接 Cover；下一頁說明哪些內容能稱為成果。

### S003 — 這份簡報不把官方介紹當成成果
- **章節：** Conference Overview
- **目的：** 明確建立閱讀可信度與參與邊界。
- **來源：** Summary + Notes
- **內容：** Structurizr 有實作；LLM Wiki／Trading 時段重疊；Knowledge Graph 未參加；ACP 沒有課程圖片；FinOps 數字待確認。
- **主視覺／版型：** Dark evidence matrix，左側 claim，右側 evidence level 與 limitation。
- **限制：** 不加入未在筆記或 Artifact 中確認的現場細節。
- **敘事：** 回應上一頁的證據規則；下一頁進入共同工程問題。

## Engineering Takeaways

### S004 — AI 品質不是 Prompt 單點問題
- **章節：** Engineering Takeaways
- **目的：** 提出全套簡報的第一個共同問題。
- **來源：** Summary + Harness Notes + Compliance Notes
- **內容：** Prompt、Context、Tool、State、Verification、Recovery 的責任分界。
- **主視覺／版型：** Dark layered system map；非 UI 卡片堆疊。
- **限制：** 是跨場 synthesis，不是單一課程的原始主張。
- **敘事：** 從證據邊界進入工程模型；下一頁補上效能與一致性的另一面。

### S005 — 速度、正確性與可恢復性必須一起量
- **章節：** Engineering Takeaways
- **目的：** 用 Trading、Incident、MCP 的共同結構設定後續閱讀方法。
- **來源：** Summary + Trading Notes + Incident Notes + MCP Notes
- **內容：** throughput／latency、資料對帳、權限邊界、diagnostic evidence、retry／recovery。
- **主視覺／版型：** Light three-axis comparison，避免用結論性口號。
- **限制：** 數據只在各自測試條件下成立。
- **敘事：** 從共同原則進入第一個具體 Artifact：Structurizr。

## Architecture as Code

### S006 — 架構圖失去同步時，問題不在畫圖工具
- **章節：** Architecture as Code
- **目的：** 說明一次性架構圖無法保存邊界、依賴與決策脈絡。
- **來源：** Structurizr Notes + Summary
- **內容：** 人、Agent、維運各自理解系統；缺少共同模型時會產生漂移。
- **主視覺／版型：** Dark problem-to-consequence flow；不放未驗證的組織案例。
- **限制：** 由筆記整理出的工程問題，不是量化研究。
- **敘事：** 建立問題；下一頁展示 C4、DSL、ADR 的責任分工。

### S007 — C4、DSL 與 ADR 共享同一份決策上下文
- **章節：** Architecture as Code
- **目的：** 讓讀者理解 Architecture as Code 不只是把圖改成文字。
- **來源：** Structurizr Notes + Artifact `dev/structurizr/*`
- **內容：** C4 表達層級，DSL 保存模型，Views 呈現視角，ADR 保存取捨。
- **主視覺／版型：** Technical flow：需求脈絡 → C4 Model → DSL → Views → ADR。
- **限制：** 不把 OpenCode 的協助等同於自動做出正確架構。
- **敘事：** 回答 S006 的問題；下一頁展示實際 Workshop 成果。

### S008 — Workshop 產出的部署視角如何回答系統邊界
- **章節：** Architecture as Code
- **目的：** 以實作成果說明模型能回答誰使用、誰負責、什麼不在範圍內。
- **來源：** Structurizr Notes + Artifact + Photo
- **內容：** Toy Preorder Lottery Service、EventBridge、Preorder API／DB、既有實名 App 與門市取貨系統。
- **主視覺／版型：** 左 65% 大圖，右 35% 三個讀圖重點與 Evidence 標籤。
- **圖片候選：** `hello-world-notes/session/2026-10-14/1010-structurizr-opencode/assets/image.png`
- **限制：** 圖中細節以 Artifact 與 notes 為準，不自行補讀不清的文字。
- **敘事：** 將抽象方法落到成果；下一頁轉到知識模型。

## Knowledge Engineering

### S009 — RAG 的瓶頸也可能在知識來源治理
- **章節：** Knowledge Engineering
- **目的：** 說明 LLM Wiki 把問題從 Retriever 往來源、版本與證據前移。
- **來源：** LLM Wiki Notes + README
- **內容：** Raw 保留原始來源，Wiki 組織 source／concept／entity／query，Ops 管理 review 與 publish。
- **主視覺／版型：** 三層垂直架構圖；搭配課堂投影片照片作 evidence。
- **圖片候選：** `hello-world-notes/session/2026-10-14/1330-llm-wiki/assets/workshop-photo-5.jpg`
- **限制：** 此場與 Trading 同時段，不宣稱完整參與。
- **敘事：** 從模型治理轉向更新流程；下一頁談評測不能脫離版本。

### S010 — 11/11 不是通用準確率
- **章節：** Knowledge Engineering
- **目的：** 展示知識更新會造成回歸，評測必須固定版本與條件。
- **來源：** LLM Wiki Notes
- **內容：** v1 10 題 8/10、v2 11 題 10/11、更新後 9/11 再修到 11/11；只作小型觀察。
- **主視覺／版型：** Light evidence timeline，明確標題「題數與條件不同」。
- **限制：** 不推導通用 benchmark 或 production accuracy。
- **敘事：** 將知識治理落到可驗證變更；下一頁進入交易系統的量化取捨。

## Distributed System Consistency

### S011 — 交易流程的瓶頸藏在逐筆清理
- **章節：** Distributed System Consistency
- **目的：** 說明批次 SQL 如何降低資料庫寫入負擔。
- **來源：** Trading Notes + Photo
- **內容：** 約 30,000 次 UPDATE 降為 32 次；BUY rate 664→922 trades/s、backlog 14,110→6,261、p95 13.6→4.5 秒。
- **主視覺／版型：** Before／After benchmark；旁邊放系統簡化資料流。
- **圖片候選：** `hello-world-notes/session/2026-10-14/1330-event-driven-trading/assets/workshop-photo-1.jpg`
- **限制：** 特定依序測試，不是正式容量；採用的原因還包含 30,000 筆 ID／資產對帳正確。
- **敘事：** 先展示採用的優化；下一頁展示速度更快但被拒絕的方案。

### S012 — 拿掉 Transaction 後，速度不能抵銷部分提交
- **章節：** Distributed System Consistency
- **目的：** 讓讀者看見效能改善與業務原子性之間的衝突。
- **來源：** Trading Notes
- **內容：** 11,799→20,405 settlements/s（+72.9%），但 partial commit 與角色交換 deadlock 使方案撤回；恢復每事件 Transaction 與固定 lock order。
- **主視覺／版型：** Dark decision split：Speed gain／Correctness failure／Decision。
- **限制：** 數字不代表目前系統容量。
- **敘事：** 從「變快」轉為「為何拒絕」；下一頁追查 scheduler 與 duplicate trade。

### S013 — scheduler 隔離修好吞吐，卻揭出 tradeId 推測錯誤
- **章節：** Distributed System Consistency
- **目的：** 展示效能修正如何引出一致性問題。
- **來源：** Trading Notes
- **內容：** 單一 scheduler 造成 167.93 trades/s、backlog 4,090；拆開後 383.45 trades/s、backlog 246；後續發現 MatchEngine 42,500 對 Order／Wallet 42,499。
- **主視覺／版型：** Sequence／causal chain：阻塞 → 隔離 → 對帳差一筆 → root cause。
- **限制：** 800 orders/s 仍未通過效能關卡。
- **敘事：** 將局部成功連到隱藏 bug；下一頁收斂驗證方法。

### S014 — Benchmark 的通關條件不是只有 TPS
- **章節：** Distributed System Consistency
- **目的：** 把交易案例抽象成可重用的驗證矩陣。
- **來源：** Trading Notes + Summary
- **內容：** Function correctness、data reconciliation、runtime characteristics、failure test；k6 60 秒 warm-up＋900 秒量測的條件保留。
- **主視覺／版型：** Light verification matrix；每格列 metric 與 evidence。
- **限制：** 192,000 orders／96,000 trades 是單機、單次、特定版本結果。
- **敘事：** 完成交易章節；下一頁轉到 Agent 規範的強制性。

## Agent Skills / Compliance

### S015 — Skill 描述規範，Harness 決定能不能執行
- **章節：** Agent Skills / Compliance
- **目的：** 分開 Soft Constraints 與 Enforced Constraints。
- **來源：** Compliance Notes + README + Photo
- **內容：** Prompt／Rules／Skills 對比 Permission／Pre-tool Hook／Automation／Human Approval。
- **主視覺／版型：** Dark boundary diagram；使用 `workshop-photo-6.jpg` 作 supporting evidence。
- **圖片候選：** `hello-world-notes/session/2026-10-14/1415-agent-compliance-skills/assets/workshop-photo-6.jpg`
- **限制：** 具體 secret scanning 工具尚未在筆記確認。
- **敘事：** 由「規則」進入「執行邊界」；下一頁談風險操作與回饋。

### S016 — 不可逆操作要留下人工核准與失敗證據
- **章節：** Agent Skills / Compliance
- **目的：** 把治理責任放到 commit、push、deploy 與 secret 邊界。
- **來源：** Compliance Notes + Photo
- **內容：** 開發／部署責任分離，敏感操作 pre-tool／提交前／部署前檢查，異常轉成下一次可執行的規則。
- **主視覺／版型：** Light risk boundary；左側 Agent intent，右側 approval／audit。
- **圖片候選：** `hello-world-notes/session/2026-10-14/1415-agent-compliance-skills/assets/workshop-photo-9.jpg`
- **限制：** 後續導入方向不是已在公司落地的成果。
- **敘事：** 將規範落到操作；下一頁轉到成本治理。

## FinOps

### S017 — 成本治理先回答「誰用了什麼」
- **章節：** FinOps
- **目的：** 說明成本不是只看總額，而是先建立歸屬、使用量與異常可視性。
- **來源：** FinOps Notes + README + Photo
- **內容：** Inform／Optimize／Operate；allocation、utilization、budget alert、低使用率資源。
- **主視覺／版型：** Dark lifecycle flow；搭配課堂框架圖片。
- **圖片候選：** `hello-world-notes/session/2026-10-14/1515-cloud-finops/assets/workshop-photo-2.jpg`
- **限制：** 不把課堂案例改寫成公司節省金額。
- **敘事：** 建立治理流程；下一頁保留數字證據限制。

### S018 — 未確認單位與期間的數字不能成為 ROI
- **章節：** FinOps
- **目的：** 示範如何在簡報中保留有用觀察又不誇大。
- **來源：** FinOps Notes + Summary
- **內容：** 雲端桌面掃描案例可作待驗證 signal；需補 unit、time range、scope、baseline。
- **主視覺／版型：** Light evidence card with explicit `UNVERIFIED` label。
- **限制：** 沒有正式 savings claim。
- **敘事：** 完成成本章節；下一頁進入 Agent 代表公司行動的治理問題。

## A2A / x402 / AP2

### S019 — Agent 代表公司行動後，問題變成身分與授權
- **章節：** A2A / x402 / AP2
- **目的：** 把四個名詞放入同一個 Security Agent 購買資安情報情境。
- **來源：** A2A Notes + Summary
- **內容：** Identity、Authorization、Budget、Payment、Audit 五個問題。
- **主視覺／版型：** Dark scenario map；使用 AP2 圖片作 supporting evidence。
- **圖片候選：** `hello-world-notes/session/2026-10-14/1600-agentic-a2a-x402-ap2/assets/workshop-photo-11.jpg`
- **限制：** 本場筆記偏概念整理，沒有列為已完成實作成果。
- **敘事：** 從問題設定到協定分工；下一頁解釋 A2A／x402／AP2／Ghost Pay。

### S020 — A2A、x402、AP2、Ghost Pay 的責任分工
- **章節：** A2A / x402 / AP2
- **目的：** 避免把「Agent 付款」簡化成單一協定功能。
- **來源：** A2A Notes + Photo
- **內容：** A2A＝任務交接；x402＝付款觸發；AP2＝授權與預算；Ghost Pay＝基礎設施攔截與簽署。
- **主視覺／版型：** Technical layered flow：task → 402 → authorization → mesh payment → audit。
- **圖片候選：** `hello-world-notes/session/2026-10-14/1600-agentic-a2a-x402-ap2/assets/workshop-photo-3.jpg`
- **限制：** 官方背景與筆記概念需分開；不宣稱已完成支付整合。
- **敘事：** 收束本章；下一頁轉到人必須保留的判斷。

## Engineering Judgment

### S021 — AI 提案速度越快，越需要人先形成理解
- **章節：** Engineering Judgment
- **目的：** 說明哪些決策不適合直接交給 AI。
- **來源：** Architecture Judgment Notes + Photo
- **內容：** 影響範圍、依賴者、錯誤發現時間與回復協調難度越高，越需要人先理解並設定邊界。
- **主視覺／版型：** Dark decision gradient without color gradient：reversible ↔ irreversible。
- **圖片候選：** `hello-world-notes/session/2026-10-14/1700-architecture-judgment/assets/workshop-photo-3.jpg`
- **限制：** 是課堂心得與建議，不是量化 maturity model。
- **敘事：** 建立判斷邊界；下一頁談如何把判斷留下來。

### S022 — Design Review 也要保存被否決的方案
- **章節：** Engineering Judgment
- **目的：** 將資深工程師的隱性經驗轉成可傳承資料。
- **來源：** Architecture Judgment Notes
- **內容：** 人先設計、AI 提替代方案與 challenge assumptions；Review 保留最後選項、替代方案與否決理由；用三個訊號檢查是否成長。
- **主視覺／版型：** Light decision record：proposal／alternatives／rejected because／next signal。
- **限制：** 尚未對應到 Repository 中的正式 Design Review Artifact。
- **敘事：** 從個人判斷轉到團隊工作流。

## Team AI Workflow

### S023 — 個人工作流要先變成可重跑的增量迴圈
- **章節：** Team AI Workflow
- **目的：** 展示從需求共識到 atomic implementation 的工程節奏。
- **來源：** Team Workflow Notes + Photo
- **內容：** 需求共識 → 小步修改 → 每步驗證 → Git evidence；AI Review 不等於 PR 通過。
- **主視覺／版型：** Dark loop，使用 `workshop-photo-4.jpg` 作 context。
- **圖片候選：** `hello-world-notes/session/2026-10-15/1010-ai-workflow-team/assets/workshop-photo-4.jpg`
- **限制：** 不把個人做法宣稱為公司標準流程。
- **敘事：** 建立 loop；下一頁轉為團隊可共享的資產。

### S024 — 團隊共用的是規則、證據與邊界
- **章節：** Team AI Workflow
- **目的：** 說明團隊化不是共享同一個 Prompt，而是共享可驗證的工程資產。
- **來源：** Team Workflow Notes + Summary
- **內容：** 共識文件、規範檢查、atomic changes、review、CI 與結果紀錄。
- **主視覺／版型：** Light asset map：individual workflow → repository convention → team gate。
- **限制：** 後續建議需標為待導入。
- **敘事：** 從工作流進入事故調查的運行場景。

## Incident Investigation

### S025 — 告警只是入口，不是診斷答案
- **章節：** Incident Investigation
- **目的：** 展示傳統 SRE 調查如何從告警取得多源證據。
- **來源：** Incident Notes + Photo
- **內容：** Alert → Metrics／Traces／Logs／Kubernetes events／config → hypothesis → verification。
- **主視覺／版型：** Dark evidence sequence；使用 `workshop-photo-1.jpg`。
- **圖片候選：** `hello-world-notes/session/2026-10-15/1115-ai-incident-investigation/assets/workshop-photo-1.jpg`
- **限制：** 照片中的投影片文字需裁切與確認，不補寫看不清的細節。
- **敘事：** 建立人類流程；下一頁展示 SRE Agent 的架構分工。

### S026 — Webhook Receiver 與背景調查必須分離
- **章節：** Incident Investigation
- **目的：** 說明 Agent 化事故調查的執行邊界。
- **來源：** Incident Notes + Photo
- **內容：** Receiver 快速回應；background worker 執行工具、分析、儲存與通知；需要 Queue、Retry、Timeout、Idempotency。
- **主視覺／版型：** Technical flow + failure boundary；使用 `workshop-photo-3.jpg`。
- **圖片候選：** `hello-world-notes/session/2026-10-15/1115-ai-incident-investigation/assets/workshop-photo-3.jpg`
- **限制：** 課堂記錄有待確認技術細節，不將成功率或成本缺口補成數字。
- **敘事：** 由流程進入 agent architecture；下一頁談規則與歷史知識。

### S027 — 規則先縮小範圍，Agent 再整理上下文
- **章節：** Incident Investigation
- **目的：** 說明規則、即時遙測與歷史事故的分工。
- **來源：** Incident Notes
- **內容：** Rule engine 情境化告警；Agent 做跨資料源整理與解釋；向量檢索補充歷史但不能取代即時證據；人工確認保留。
- **主視覺／版型：** Light responsibility map：deterministic filter → evidence retrieval → explanation → human decision。
- **限制：** 歷史知識庫與 RC 成本仍有未確認細節。
- **敘事：** 完成事故章節；下一頁進入有實作 Artifact 的 MCP Workshop。

## MCP OAuth2

### S028 — Client、Authorization Server、Resource Server 各自負責什麼
- **章節：** MCP OAuth2
- **目的：** 先固定三個角色，避免把登入、Token 與工具權限混為一談。
- **來源：** MCP Notes + Workshop README + Artifact
- **內容：** Client 登入與帶 Token；Signet 發 Token；MCP Server 驗證資源存取；Kong 在 Lab 06 集中入口授權。
- **主視覺／版型：** Dark three-column sequence；不顯示任何真實 Token。
- **限制：** workshop 使用本機範例與教學服務，不等同 production deployment。
- **敘事：** 建立角色；下一頁進入 discovery 與 PKCE。

### S029 — 從 401 Challenge 追到 Protected Resource Metadata
- **章節：** MCP OAuth2
- **目的：** 把 discovery 變成可觀察的 HTTP 流程。
- **來源：** MCP Notes + Workshop repo `labs/02/README.md` + Artifact
- **內容：** `/mcp` 401 → PRM → issuer → AS metadata → authorization／token／JWKS endpoints。
- **主視覺／版型：** Sequence diagram；可用 `image.png` 作背景證據但優先重繪乾淨流程。
- **圖片候選：** `hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image.png`
- **限制：** Lab 02 收到有效 Token 仍回 401，是教學中間狀態，不是 bug。
- **敘事：** 由角色落到 discovery；下一頁說明 scope／audience 的可驗證結果。

### S030 — Scope 與 audience 讓「能登入」不等於「能做事」
- **章節：** MCP OAuth2
- **目的：** 展示 read／write scope 與 resource audience 的業務邊界。
- **來源：** MCP Notes + Workshop repo tests／docs + Photo
- **內容：** `notes:read` 可讀、缺 `notes:write` 得 403；A 的 Token 不能打 B；Server 驗 issuer、signature、audience、expiry、type。
- **主視覺／版型：** Dark sequence，使用 `image copy 6.png` 的 scope 實作圖。
- **圖片候選：** `hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image copy 6.png`
- **限制：** 不顯示完整 Token、Client Secret 或帳號資料。
- **敘事：** 從 discovery 進入 authorization decision；下一頁比較 Server 與 Gateway。

### S031 — Gateway 集中驗證，Server 仍保留業務權限
- **章節：** MCP OAuth2
- **目的：** 說清楚 Lab 06 的邊界，不把 Gateway 當成所有安全問題的解答。
- **來源：** MCP Notes + Workshop repo `labs/06`／tests + Summary
- **內容：** Server 自己驗證 vs Kong 離線 JWT／入口驗證；backend 仍需保留工具與資料權限；撤銷不一定即時反映。
- **主視覺／版型：** Before／After architecture split。
- **限制：** Lab 06 的 Gateway boundary test 不等同於完整 production Kong deployment。
- **敘事：** 完成 OAuth2 實作段；下一頁進入 ACP 的 session runtime。

## ACP

### S032 — Chat thread 對應的是長生命週期 Agent Session
- **章節：** ACP
- **目的：** 說明聊天平台接 Agent 後，核心是 session lifecycle，不是 Prompt proxy。
- **來源：** ACP Notes + README
- **內容：** Discord／Slack thread → session；prompt、tool call、thinking、permission、streaming、cancel／resume。
- **主視覺／版型：** Dark sequence；以 CSS／SVG 重繪，不使用課程照片。
- **圖片候選：** 無。筆記明確說本場沒有可引用課程圖片。
- **限制：** OpenAB 與 Helm 用法屬課程內容；尚未在本 Repository 形成實作成果。
- **敘事：** 從 OAuth 的 request boundary 轉到 runtime boundary；下一頁談 admission control。

### S033 — 平台權限與 Agent 權限是兩層控制
- **章節：** ACP
- **目的：** 說明 bot 能被誰呼叫，不等於 Agent 能對哪些 repo 或環境操作。
- **來源：** ACP Notes
- **內容：** channel／user allowlist、Agent tool permission、multi-agent admission control、code review → deploy 的分段責任。
- **主視覺／版型：** Light boundary matrix。
- **限制：** 只規劃概念與實務例子，不宣稱已部署 OpenAB。
- **敘事：** 收束 runtime；下一頁引入 Harness 的三層模型。

## Harness Engineering

### S034 — Prompt、Context、Harness 是三個不同控制面
- **章節：** Harness Engineering
- **目的：** 將 AI 不穩定從 Prompt 問題重新放回系統設計。
- **來源：** Harness Notes + Photo
- **內容：** Prompt 控制怎麼說；Context 控制看得到什麼；Harness 控制能做什麼、如何觀測、驗證與恢復。
- **主視覺／版型：** Dark three-layer architecture；使用 `workshop-photo-5.jpg`。
- **圖片候選：** `hello-world-notes/session/2026-10-15/1600-harness-engineering/assets/workshop-photo-5.jpg`
- **限制：** 圖片為直拍投影片，需裁切與校正；不把照片色彩當作 Design System。
- **敘事：** 建立心智模型；下一頁展示 Planner／Generator／Evaluator loop。

### S035 — Multi-Agent 的價值來自責任邊界
- **章節：** Harness Engineering
- **目的：** 說明 Researcher、Builder、Reviewer、Orchestrator 各自需要 output contract。
- **來源：** Harness Notes
- **內容：** 多 Agent 不是多次 LLM call；需要 routing、shared context、memory、review 與明確分工。
- **主視覺／版型：** Technical orchestration diagram。
- **限制：** 是課堂模型與整理，不是對所有 multi-agent system 的性能保證。
- **敘事：** 從三層模型進入執行分工；下一頁收斂到 verify／recover。

### S036 — 先設計失敗如何被發現與恢復
- **章節：** Harness Engineering
- **目的：** 將 Observability、Verification、Evaluation、Recovery 放入同一個 loop。
- **來源：** Harness Notes + Summary
- **內容：** Session／Trace／Span／Metric／Log；schema／test／architecture check；retry／rollback／fallback／human intervention。
- **主視覺／版型：** Light Planner → Generator → Evaluator loop。
- **限制：** 尚未替本 Repository 建立完整 Harness runtime。
- **敘事：** 完成 Harness；下一頁進入能阻擋架構違規的 guardrail。

## Architecture Enforcement

### S037 — Prompt 與 AGENTS.md 只能提供 Soft Constraint
- **章節：** Architecture Enforcement
- **目的：** 說明為何架構規範需要可執行檢查。
- **來源：** Lint Notes + Summary + Photo
- **內容：** Rule ≠ Enforcement；Skills、Prompt、文件需接到 Lint、Architecture Test、Git Hook、CI。
- **主視覺／版型：** Dark boundary statement；使用 `workshop-photo-5.jpg`。
- **圖片候選：** `hello-world-notes/session/2026-10-15/1700-lint-architecture-test/assets/workshop-photo-5.jpg`
- **限制：** 直拍照片需裁切；三層防線的細節以 notes 為準。
- **敘事：** 建立必要性；下一頁拆 direct edge 與完整 path。

### S038 — Lint 看一條邊，Architecture Test 看完整路徑
- **章節：** Architecture Enforcement
- **目的：** 具體解釋 depguard 為何不足以守住間接依賴。
- **來源：** Lint Notes
- **內容：** Application → pagination → persistence；每段 direct import 可能合法，但完整 path 仍穿透 Infrastructure。
- **主視覺／版型：** Technical dependency graph with violation path。
- **限制：** 不新增未在筆記出現的工具能力。
- **敘事：** 由概念到算法；下一頁完成 enforcement loop。

### S039 — 同一個 verify command 串起 Agent、Git Hook 與 CI
- **章節：** Architecture Enforcement
- **目的：** 收斂有限 retry、完整錯誤回饋與三層防線。
- **來源：** Lint Notes + Photo
- **內容：** Agent `make verify` → Git Hook → CI／branch protection；保留 stdout、stderr、violation path、failure reason；retry budget 用盡交人工。
- **主視覺／版型：** Light enforcement pipeline。
- **圖片候選：** `hello-world-notes/session/2026-10-15/1700-lint-architecture-test/assets/workshop-photo-5.jpg`
- **限制：** 不把課堂建議說成此 Repository 已完成的 CI 設定。
- **敘事：** 完成 guardrail；下一頁做跨場 synthesis。

## Cross-session Synthesis

### S040 — 十三場課程其實在反覆回答五個問題
- **章節：** Cross-session Synthesis
- **目的：** 將不同課程映射到共同工程問題。
- **來源：** Summary + all Notes
- **內容：** 我是誰、能做什麼、目前狀態、怎麼證明、失敗怎麼恢復。
- **主視覺／版型：** Dark matrix：Architecture／Knowledge／Distributed／Agent／Operations。
- **限制：** 這是跨場歸納，需避免抹平各場的實務特色。
- **敘事：** 從課程清單提升抽象層次；下一頁保留各場差異。

### S041 — 同一套工程原則，在不同系統表現不同
- **章節：** Cross-session Synthesis
- **目的：** 對照 Structurizr、Trading、MCP、Harness、Architecture Test 的不同 evidence。
- **來源：** Summary + Notes + Artifacts
- **內容：** Model／reconciliation／token claims／trace／dependency path 各自是不同的可驗證邊界。
- **主視覺／版型：** Light comparison table，避免把所有課程壓成同一種成熟度分數。
- **限制：** 不計算總分，也不推導課程優劣排名。
- **敘事：** 從原則回到差異；下一頁提出最小可落地工作。

## Practical Outcomes / Future / Closing

### S042 — 回到團隊，可以先做的工程改變
- **章節：** Practical Outcomes
- **目的：** 產出不依賴新框架的最小行動清單。
- **來源：** Summary + Compliance／Team／Harness／Lint Notes
- **內容：** 統一 verify command、保留 evidence、定義 retry budget、建立架構檢查、固定 reconciliation、標記人工核准邊界。
- **主視覺／版型：** Dark ordered worklist，標記「可立即驗證」與「需研究」。
- **限制：** 是建議，不宣稱已在公司導入。
- **敘事：** 將 synthesis 變成行動；下一頁列出仍需研究的未驗證方向。

### S043 — 後續應用要先補證據，再擴大自動化
- **章節：** Future Applications
- **目的：** 區分可延伸方向與已完成成果。
- **來源：** Notes 的後續行動段落
- **內容：** Ponytail guardrail、Agent task trace、FinOps allocation、MCP revocation、ACP runtime、Architecture Test POC。
- **主視覺／版型：** Light roadmap with `Next experiment` labels。
- **限制：** 每項都標成 proposed／unverified，不能寫成已完成。
- **敘事：** 由實際結果走向未來；下一頁用一句話收束。

### S044 — 可接受的 AI 系統，必須能被驗證、追查與恢復
- **章節：** Closing
- **目的：** 將 13 場內容收束為工程判準。
- **來源：** Summary + Cross-session Synthesis
- **內容：** 邊界清楚、狀態可追蹤、結果可驗證、失敗可恢復；保留「速度提高仍不能直接接受」的判斷。
- **主視覺／版型：** Minimal dark closing；只留四個判準與資料來源標籤。
- **限制：** 不新增 slogan 或未被證據支持的承諾。
- **敘事：** 終點；回應 S001 的主題。
