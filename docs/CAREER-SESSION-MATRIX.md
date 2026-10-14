# Career Session Matrix

## 評估範圍與資料規則

本文件只使用 repository 內已保存的官方 Session、Lab 與 Speaker snapshot；Official Detail Summary 取自官方 detail 原文，Career Fit、分數、Why For Me 與 Already Know / Overlap 屬於 Assessment。抓取時間以 data/*.json 與各 snapshot 為準。

## My Career Profile

### My Current Career Position

目前定位接近 Full-Stack / Backend Software Engineer 加上 AI-assisted Software Engineer，已能獨立處理 ASP.NET Core、C#、Next.js、React、TypeScript、PostgreSQL、SQL Server、Docker、Linux、GitHub Actions、GHCR、VPS、Redis、RabbitMQ、Worker、Scheduler、Webhook、RBAC 與 production CI/CD。Voice AI SaaS、LetsBall 與 Geo RAG 不是 CRUD demo，而是包含 multi-tenant、queue、lock、projection、snapshot、eventual consistency、RAG ingestion/retrieval 與部署維運的實際系統；另有水表 CV/OCR pipeline，做過 benchmark、A/B、error analysis、offline runtime 與 regression evidence。

目前不是 AI Coding 初學者，也不是只會 prompt 的使用者；已大量使用 Codex、Agent Skills、repository rules、structured workflow、AI-assisted architecture/review/debugging，並以 Ponytail 原則控制依賴、抽象與變更邊界。下一階段的缺口不是再學一個 AI coding tool，而是把 AI 變成可治理的工程系統：Harness、context/instruction/tool/environment constraints、independent verification、machine-verifiable acceptance、architecture guardrail、Agent/MCP security、team workflow、observability、governance 與可重現交付。FlowDock 使 Context、Memory、State Machine、Knowledge Graph、Resume State 與 Product Builder 題目具有額外價值。

### 評估解讀

Career Fit 看是否推進 Senior Engineer / Architect / Agentic Engineer；Current Relevance 看能否連到既有專案；New Knowledge 對已有 RAG、CI/CD、distributed system 與 AI Coding 經驗採保守評分；Technical Depth 只根據 detail page；Speaker Strength 只採 biography evidence，不把大公司直接等同實力；Actionability 看能否帶回 repo、workflow、architecture、acceptance 或 security practice。

## Complete Session Matrix

| Recommendation | Date | Time | Type | Room | Session | Speaker | Company / Role | Official Detail Summary | Main Topics | Career Fit | New Knowledge | Technical Depth | Speaker Strength | Actionability | Overall | Why For Me | Already Know / Overlap | Conflict |
|---|---|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---:|---:|---|---|---|
| ○ 不優先 | 2026-10-14 | 10:00-10:10 | session | ABCDEF 會議室 | Welcome opening |  | Official speaker detail available | 中文 | software engineering | 4 | 10 | 4 | 0 | 4 | 4.3 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | none |
| △ 普通 | 2026-10-14 | 10:10-10:55 | session | ABCDEF 會議室 | 以一些範例來討論AI Coding新時代的團隊開發 | 陳宜昌 (YC Chen) | Noopher AI CEO and Founder | 本演講將從幾個實際案例出發，分享 YC 如何從一開始嘗試用一份超過 5,000 行的完整 Spec 驅動 AI 開發，經歷失敗後，逐步調整成「拆解問題、模組化開發、小範圍 Spec、測試驅動、逐步整合」的 AI Coding 開發流程；並結合近期創立 Noopher AI、從零開始打造 AI-Native Company 的第一手經驗，進一步討論當 AI 能夠參與需求分析、架構討論、程式實作、測試、除錯與 Code Review，甚至逐漸成為團隊日常工作中的重要生產力來源後，傳統軟體團隊的分工方式與開發流程會產生什 | agent, 架構, 產品 | 6 | 4 | 7 | 8 | 8 | 6.4 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | none |
| ✅ 推薦 | 2026-10-14 | 10:10-12:10 | lab | 603+604 會議室 | 為 Agentic AI 設計前端狀態機與即時回饋介面 | 何剛 (Michael Ho); Sunny Wu | 有 10 年以上的開發經驗，舉凡前端/後端/架構/系統分析等; Senior Full-Stack Engineer | AI Agent 已從實驗走向產品，但前端工程師普遍缺乏一套系統性的方法來設計「AI 工作中」的介面。市面上的教學幾乎都停在「串 API 拿回文字」，當 Agent 開始會思考、呼叫工具、失敗、重試，前端的狀態複雜度就完全不同了。 這場 Workshop 填補從 demo 到產品之間的工程缺口，涵蓋四個核心技術模組： 1. Agent 執行狀態建模：用 TypeScript discriminated union 設計 AgentStep 型別系統，讓編譯器在 switch 裡自動窄化型別，徹底消除 runtime | agent, 架構, 產品 | 7 | 8 | 8 | 6 | 9 | 7.2 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 已有 Voice AI / LetsBall 的 queue、worker、projection、retry、idempotency 與 eventually-consistent 實戰。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ✅ 推薦 | 2026-10-14 | 10:10-12:10 | lab | 605+606 會議室 | 從點子到產品：AI 驅動的現代軟體開發全流程實踐 | 林正祥 (ATai) | 奧思數位 技術總監 | (本場內容與 10/14 Room 605+606 15:30–17:30 工作坊相同，可依個人時間安排擇一場次參加。) 在軟體開發領域，AI 工具正在徹底改變產品團隊的工作方式。本演講將帶領聽眾深入探討如何利用 AI 工具鏈，從產品規劃、UI/UX 設計、程式開發到測試部署，實現一個高效且協作的現代開發流程。 演講將涵蓋以下核心主題： 首先，我們將介紹 AI 在產品規劃階段的應用。透過 Perplexity 進行市場研究與競爭分析，使用 AI 工具將零散想法轉化為結構化的產品需求文件，幫助產品經理與工程團隊快速對 | 架構, 一致性, 產品 | 7 | 4 | 10 | 7 | 9 | 7 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 已有 Voice AI / LetsBall 的 queue、worker、projection、retry、idempotency 與 eventually-consistent 實戰。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ⭐ 時段首選 · 🔥 強烈推薦 | 2026-10-14 | 10:10-12:10 | lab | 607+608 會議室 | AI 驅動架構實戰：Structurizr × OpenCode | 郭孟坤 (Mansun Kuo) | 目前於外商擔任雲端/軟體架構師，熱衷於技術分享與社群交流。近期專注於 AI 工具的落地與實踐，致力於推動團隊全面導入 AI 技術，優化開發與維運（DevOps）流程，以科技賦能團隊，實現高效能敏捷開發。 | (本場內容與 10/15 Room 603+604 15:30–17:30 工作坊相同，可依個人時間安排擇一場次參加。) 架構師的核心職責從來不只是「畫圖」，而是驅動跨角色共識與決策落地，讓不同角色在同一份事實來源上協作。2026 年，生成式 AI 已深度介入開發流程，但這項使命依然是個不容易的任務。傳統圖形化介面繪製工具需要大量的人工介入和手動微調，諸如 Mermaid、PlantUML 這類「Diagrams as Code 1.0」工具雖使用程式碼產生圖形，本質仍是「用打字取代畫圖」，產出的依然是一張張獨立的 | mcp, agent, 架構 | 7 | 8 | 10 | 8 | 9 | 8.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-14 | 11:15-12:00 | session | DE 會議室 | AI 工具爆發時代的企業身分認證治理實戰 | 吳柏毅 (appleboy) | Mediatek 工程師 | 這場演講分享我們團隊面對這個現場時的真實經歷與應對策略。我們遇到三個被 AI 自動化放大的資安風險：(1) 每個 AI 服務 / MCP / Bot 各自接 LDAP，帳密邏輯散落、安全標準不一；(2) CLI 與 MCP 沒有瀏覽器登入流程，工程師把帳密與 API Key 寫死在原始碼，隨程式碼一起推上 Git；(3) Token 一旦發出就失控——誰持有、何時過期、能否撤銷全都不知道，出事無法追溯、無法即時止血。 我會先點出一個關鍵的觀念轉變：傳統 SSO 是「以人為中心」設計的，假設使用者面前有一個瀏覽器；但 | mcp, production, agent, 治理, 架構, 安全, 認證 | 6 | 10 | 7 | 6 | 8 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| △ 普通 | 2026-10-14 | 11:15-12:00 | session | BC 會議室 | 自己刻 Agent 框架：最難的不是呼叫 LLM | Jamis Liao | 街口支付 (JKOPay) 平台工程師 | 當 Agent 執行長任務、資訊整理或分析輸出時，焦點已從『模型能否回答』轉為『產出是否精確』。同時，過程的可觀察性、可評估性，以及是否支援後續調整，也是非常重要考量。 開發會遇到的痛點，通常在實際把 Agent 跑起來之後，最常卡住的不是「如何拿到模型的回答」，而是這幾類問題： - 幻覺產生：LLM 回答的內容摻雜了幻覺，讓結果無法直接使用。 - 定位困難：結果不如預期時，不知道該從哪裡開始調整——是 prompt 寫得不好？工具回傳的資料有問題？還是某一個過程把 context 搞壞了？ - 過程黑盒：多步驟流 | context, ci/cd, workflow, eval, agent, 架構 | 6 | 4 | 7 | 6 | 8 | 6.5 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| △ 普通 | 2026-10-14 | 11:15-12:00 | session | F 會議室 | 當網站客群不再是人類：WebMCP 的前端新革命 | 黃銘 (Mike Huang) | Official speaker detail available | 聽眾收穫： 掌握 WebMCP 開發規範，學會把網頁功能「函式化」宣告給 AI agent，提早佈局下一代流量入口。 黃銘 (Mike Huang) Angular Taiwan 打雜義工 現為 Angular GDE，主要熟悉 .NET WebAPI 與 Angular 開發技術，並經常於個人部落格分享學習知識。 參加過四次 iT 邦幫忙鐵人賽，榮獲兩次冠軍與一次優選。並著有「打通 RxJS 任督二脈：從菜雞前進老鳥必學的關鍵知識」一書，該書曾榮獲天瓏書局 2021/8 繁體中文書 銷售排行 第 1 名！。 中階 | mcp, agent, 架構 | 6 | 10 | 4 | 5 | 4 | 6.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ✅ 推薦 | 2026-10-14 | 11:15-12:00 | session | A 會議室 | 產出的人不能驗自己：AI 時代的驗收設計 | 楊騏 (Ci) | WaCare 數位健康 Tech Lead | 這件事很舊了。新的是現在那個球員一晚能跑完你一週的量，而你只有早上一杯咖啡的時間當裁判。 我這兩年的產出幾乎都是 AI 做的。一開始我以為問題是它不夠聰明。後來發現不是。問題是我自己就是產出者，我驗自己，永遠會過。 這場講我怎麼幫自己的產線裝一道外部驗證。不是講怎麼讓 AI 寫更快。是講它跟你說「做好了」的時候，你憑什麼信。 三件事： 一、規格存在，不等於規格生效。我有一次讓迴圈跑了一整晚，每一輪都綠，跑完才發現它根本沒走過我的規格。 二、閘門可以很笨。我實際在用的是 20 行 shell 加 grep，秒級出 e | harness, 驗收 | 6 | 10 | 7 | 7 | 8 | 7.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ⭐ 時段首選 · 🔥 強烈推薦 | 2026-10-14 | 13:00-15:00 | lab | 607+608 會議室 | 讓 AI 讀懂你的系統 with knowledge graph | Neo Hsu | TXOne Networks Staff Software Engineer | 大家都在問「怎麼讓 AI 更懂我的 Codebase」，但問題往往不只是模型能力，而是系統裡存在大量沒被文件化的隱性知識，以及需求用語、程式命名與模組關係之間的落差。 這場 Workshop 會帶大家實際使用 Graphify 建立 Codebase 的 Index 與 Knowledge Graph，觀察 Coding Agent 如何透過 Graph 縮小 Context Retrieval 範圍、避免一開始就搜尋錯方向。 更重要的是，我們會把 Graph 不準當成診斷訊號：找出缺文件、命名不一致、關係缺失，以 | knowledge graph, context, architecture, workflow, eval, agent, skill, 治理 | 9 | 6 | 10 | 8 | 9 | 8.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 | 已有 Geo RAG + Qdrant + Kernel Memory production implementation，基礎內容可能高度重複。 | same interval |
| ✅ 推薦 | 2026-10-14 | 13:00-15:00 | lab | 605+606 會議室 | 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 | 吳柏毅 (appleboy) | Mediatek 工程師 | (本場內容與 10/15 Room 605+606 13:00–15:00 工作坊相同，可依個人時間安排擇一場次參加。) 當 AI Agent、MCP Server、CLI 工具在公司內部數十倍增長，「帳密寫死進原始碼」與「Token 發出去就追不回來」會從個別小問題，升級成系統性的資安風險。MCP 授權規格其實已經給出方向——把 MCP Server 視為 OAuth 的 Resource Server——但真正卡住工程師的是中間幾層：Client 怎麼知道該去哪裡登入？Token 憑什麼只能存取「這一台」MCP | mcp, authorization, secret, agent, 治理, 架構, 安全, 認證 | 7 | 8 | 10 | 6 | 9 | 7.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ✅ 推薦 | 2026-10-14 | 13:00-15:00 | lab | 603+604 會議室 | 通用 AI CLI vs. 場景專用 AI：以 Lovable Web 開發為例的效能實測 | 林建宏 (Wolke Lin) | 林建宏 (Wolke) 是一名專業的軟體開發者與技術講師，曾經同時擁有 Google Developer Expert (GDE) 與 LINE API Expert (LAE) 雙重官方認證。目前在宏國德霖科技大學擔任講師，並活躍於技術教育與開發者社群，曾經為 GDG Taoyuan 的社群組織者。 | 隨著生成式 AI 能力快速發展，開發者的痛點已從「如何寫出程式碼」，轉變為「如何管理專案複雜度、控制開發成本，並選擇正確的工具」。當模型能力逐漸成熟，開發者的核心價值也將更聚焦於「定義需求」、「設計架構」與「精準選型」。 本場議程將公開我在 2026 年 iThome 鐵人賽中的精華研究，探討在全新的 Vibe Coding 時代下，如何選擇合適的 AI 開發工具，並建立高速的 PDCA 迭代流程。議程將以使用 Lovable 建置 Web 應用為主要實驗場景，聚焦以下兩大核心： 通用工具與場景專用工具的界線 評測 | 架構, 認證 | 7 | 6 | 10 | 5 | 9 | 7 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| △ 普通 | 2026-10-14 | 13:30-14:00 | session | F 會議室 | AI Workflow：打造 PM 的第二大腦 | 林芝羽 (Xenia) | 國泰金控 產品管理師 | 在面對有限的人力與持續增加的需求下，我開始將 AI 導入產品經理的日常工作，從需求分析、規格撰寫、流程設計、API 規劃、測試案例、文件整理，到簡報製作，建立一套可重複運作的 AI Workflow，讓 AI 承擔重複性工作，人則專注於需求判斷、跨部門溝通與產品決策。 本次分享將以實際專案經驗為例，介紹如何盤點工作內容、找出適合導入 AI 的環節，以及如何建立一套可持續迭代的人機協作模式。這不是一場 AI 工具介紹，也不是 Prompt 教學，而是一套能真正落地於產品開發流程中的工作方法，希望協助更多產品經理與軟體 | workflow, 產品 | 6 | 8 | 7 | 6 | 8 | 6.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| △ 普通 | 2026-10-14 | 13:30-14:00 | session | BC 會議室 | 用 AI 工作流重整事件驅動交易系統的一致性、效能與監測 | 蔡宜庭 (ET) | 國泰金控 工程師 | EAP 是一套以 Java、Spring Boot、RabbitMQ、PostgreSQL、Redis Lua 建構的事件驅動交易系統，核心流程包含訂單提交、資產保留、撮合、成交事件持久化、訂單狀態套用、錢包結算與完成標記收斂。專案初期雖然已具備基本功能，但在進行高併發壓測時，逐漸暴露出多個真實後端系統常見問題：訊息重送下的冪等性、跨服務最終一致性、Outbox 寫入放大、Queue backlog、觀測成本，以及「API 成功」與「完整業務完成」之間的落差。 我在這個過程中建立了一套 AI 協作工作流，讓 AI  | 架構, 監測, 一致性 | 6 | 8 | 9 | 5 | 8 | 6.8 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已有 Voice AI / LetsBall 的 queue、worker、projection、retry、idempotency 與 eventually-consistent 實戰。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ○ 不優先 | 2026-10-14 | 13:30-14:00 | session | DE 會議室 | AI 時代下的另類多工與心流 ：碎片化工作中的「動態專注」法則 | Ruddy 老師 | 集英信誠 顧問 | 幸運的是，我們擁有了 AI；不幸的是，AI 讓一切變得更快、更多、更碎片化。 當寫程式（Coding）不再是工程師的主要瓶頸，我們面臨的全新挑戰，是成為一個處理龐大資訊串流的「高頻調度員」。 傳統需要連續 2~3 小時不被打擾的「靜態心流」已成奢求，頻繁的任務切換正不斷消耗我們的認知能量。面對這場無法逆轉的效率革命，我們不能再用舊時代的專注模型來應對。 本演講將提出全新的思維:動態專注(Dynamic Focus)。這不是要你一心多用，而是教你如何在任務切換之間「隨插隨用」，建立高頻率、快進快出的動態心流，在極速多 | software engineering | 4 | 8 | 4 | 6 | 8 | 5.3 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ⭐ 時段首選 · △ 普通 | 2026-10-14 | 13:30-14:00 | session | A 會議室 | LLM Wiki：企業內部知識問答系統的架構演進 | 張維峻 (Justin) | 國泰金控 助理架構師 | 今年，我們受到 Andrej Karpathy 提出的 LLM Wiki 概念啟發，開始嘗試將這個思維應用在內部部門知識庫，將原有文件、流程說明與常見問題，重構為更適合 LLM Agent 理解、導航、引用與維護的知識結構。 本場演講將分享這段從 Agentic RAG 到 LLM Wiki 的架構演進，包括 LangGraph Agentic RAG 的實作經驗、企業知識問答遇到的限制、LLM-native Wiki 的設計原則，以及如何在企業環境中處理文件結構、知識更新、來源追蹤、權限控管、token 成本與回 | agent skill, mcp, agent, skill, 治理, 架構, 安全 | 6 | 6 | 7 | 7 | 8 | 6.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 | 已有 Geo RAG + Qdrant + Kernel Memory production implementation，基礎內容可能高度重複。 | same interval |
| △ 普通 | 2026-10-14 | 14:15-15:00 | session | DE 會議室 | 讓工程師失業的 N + 1 道陰影 | 高見龍 | 讓工程師失業的 N + 1 道陰影 | 一年過去，今年我想講的，是這道陰影的第 N + 1 道：SDD（規格驅動開發）。SDD 這類 harness engineering 開發流程讓我從去年那種靠手感硬扛 AI 的方式，進化成用規格穩穩地駕馭它。我不是被取代，而是更難被取代。 聽眾收穫： 一套能照搬的 SDD 流程骨架以及幾個實作上的判斷、哪種任務值得先寫規格、規格寫到多細才剛好，還有該把力氣從拼手速寫 code，轉去練定義規格與設計 harness 高見龍 五倍學院 負責人 網站程式開發者 / 講師 / 遊戲宅 / 漫畫宅，喜愛非主流的新玩具，著有《 | harness | 6 | 10 | 7 | 5 | 8 | 6.8 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ✅ 推薦 | 2026-10-14 | 14:15-15:00 | session | BC 會議室 | 懂行規的 Agent：把規範變成技能，自動化開發到部署 | 張云姵 (Sarah) | 玉山銀行 資深工程師 | 將涵蓋三個面向：其一，我們如何讓合規成為 Agent 生成當下的輸入，而非事後的審查或攔截；其二，如何透過框架層級(harness)的攔截機制——權限系統與 pre-tool hook，為 Agent 設下執行邊界，因為安全不能仰賴 Agent 自律，必須由框架強制落實；其三，我們對自動化與人工介入的判準取捨：可逆、低風險的步驟交由 Agent 自動執行——例如自行生成測試、依測試結果自我修正；不可逆或跨信任邊界的動作則保留人工確認——例如部署端雖整合既有 CI/CD pipeline，push、apply 這類不 | harness, ci/cd, agent, skill, 架構, 安全 | 6 | 6 | 7 | 8 | 8 | 7.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-14 | 14:15-15:00 | session | A 會議室 | 從寫得快到交付可信的 AI Coding 工程戰場 | 陳葵懋 (Ian Chen) | 一等一科技 研發部主任工程師 | 因此我想分享在使用SDD進行AI Coding時，能不能再從 Harness Engineering 的角度，實現可落地的 AI Coding 治理架構，過程中將結合VS-Code、Github Copilot、Claude Code Skills 、Rules、Agents 示範如何從 SDD 規格開始，經過 AI 開發、獨立 Code Review、Fortify 常見弱點預檢與程式修正，最後產生一份可以建立 Pull Request 的交付成果。 聽眾收穫： 聽眾將能理解在導入SDD AI Coding再進一 | harness, mcp, agent, skill, 治理, 架構, 安全, 認證 | 6 | 10 | 7 | 8 | 8 | 7.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| △ 普通 | 2026-10-14 | 14:15-15:00 | session | F 會議室 | 讓IT主管睡不著的課題，台灣企業Agent規模化的聖杯考驗 | 王宏仁 | Official speaker detail available | 從台灣大型企業和百位企業IT主管的調查數據，來剖析企業落地Agent的困難，更分享大型企業擁抱Agent的實戰過程與背後的挑戰。 聽眾收穫： 台灣大型企業擁抱Agent態勢 台灣企業Agent落地的兩難 CIO眼中的GAI和Agent的挑戰和機會 從台灣企業第一線實戰，來看Agent落地企業的挑戰和對策 王宏仁 iThome 副總編輯 現任 iThome 週刊副總編輯，也是歷年 iThome CIO 大調查與資安大調查統籌，調查臺灣 2 千大企業 IT 現況與發展策略，近年聚焦企業雲端轉型、IT 現代化、機器學習、 | agent, 架構, 產品 | 6 | 10 | 7 | 6 | 4 | 6.6 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-14 | 15:15-15:45 | session | F 會議室 | 雲端把花錢的權力交給了工程師，然後呢？ | 林宗穎 (Kater) | 玉山金控 副主任工程師 | 地端時代買一台機器要層層簽呈、漫長採購，但成本固定也安心；雲端時代隨需即用，工程師寫幾行 Code 就能瞬間開啟昂貴資源、動支龐大預算。權力下放到第一線是雲端的魅力，代價卻是成本失去了輪廓——往往要到月底帳單，才發現錢早就花出去了。 這場分享講述我們團隊如何建立 FinOps 機制，把看不見的雲端成本變成看得見、管得住的治理。我們做一些事情：釐清費用，把月底滯後帳單轉化為即時數據；掌握流向，讓每一分錢都對得上專案與服務；攤開消耗，讓資源配置變成有依據的決策，而不是憑感覺。 為此我們打造了一套 FinOps 治理引擎 | security, governance, architecture, workflow, agent, 治理 | 8 | 8 | 7 | 8 | 8 | 7.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 | 已有 Geo RAG + Qdrant + Kernel Memory production implementation，基礎內容可能高度重複。 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| △ 普通 | 2026-10-14 | 15:15-15:45 | session | BC 會議室 | 穩才是快 ～ 以 OKF 打造 Agentic AIOps 治理閉環 | 許庭魁 (Jerry Hsu) | 華碩電腦 infra Lead | 貼一段 log、問 AI「這該怎麼辦」~ 很多人的 AI 維運就停在這。問題是 Agent 每次都從零開始，不懂你的架構，也不記得上週的異動，建議敢放到正式區執行嗎？。本議題將分享在全球規模服務下的嚴謹 AIOps 架構，透過 Google 的 Open Knowledge Format (OKF) 標準，強化 Agent 間的記憶認知。打造一個讓它們看得懂、知道發生什麼、該做什麼、可審核、可稽核的 AIOps 閉環。說明實際落地案例與 FinOps 治理成效。 大綱 1. 全球服務維運的挑戰 2. 以 OKF 標 | agent, 治理, 架構, 安全 | 6 | 6 | 7 | 8 | 8 | 6.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| △ 普通 | 2026-10-14 | 15:15-15:45 | session | A 會議室 | AI 導入之後：傳統開發團隊的角色鬆動與開發新節奏 | 陳仁傑 | 國泰金控 資深工程師 | 這場分享來自一個金融業的專案：團隊裡有寫程式的工程師，也有不寫程式的 PM、BA 與 UX。 我們觀察到 AI 帶來兩種影響：在本業上，它是加速器，你的領域專業決定 AI 能做到 80 分；跨到不熟的領域，它是賦能工具，卻只能給你 60 分的平均解。 於是每個人的角色邊界開始鬆動，而往相近領域延伸，效果最好。 開發節奏也跟著改變。需求探索與驗證可以左移，AI 能很快產出逼真的草稿，但「螺絲先別鎖死」——需求會隨著理解而改變。 需求與規格可以脫鉤，文件只需寫程式碼讀不出來的東西。專案從 vibe coding 起步， | harness, 架構 | 6 | 6 | 7 | 6 | 8 | 6.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ✅ 推薦 | 2026-10-14 | 15:15-15:45 | session | DE 會議室 | 從 Hello World 看懂 AI 開發工具的計費結構——如何省得到錢 | 謝政廷 (Duran Hsieh) | GitHub Star TSMC 副理 | 這場議程從一個實驗開始：在 VS Code 送出同一句 Hello World，第一次花掉 6.64 個計價單位，第二次卻不到 1。拆開來看，你打的字其實只佔一小部分——真正的成本來自工具在背後組出的那份長請求：常駐指令檔、工具與 MCP schema、對話歷史。而前面沒變的部分可以走快取重用，一旦前綴變了就得整段重算，照原價收費。 弄懂這個結構之後，省錢的優先順序就清楚了：先控 output、再瘦身結構性 input、最後養成快取友善的操作習慣。我會實機示範幾個最常打斷快取的日常動作——讓計價數字自己說話，並補上 | mcp, 架構 | 6 | 10 | 7 | 8 | 8 | 7.3 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| △ 普通 | 2026-10-14 | 15:30-17:30 | lab | 607+608 會議室 | 在解決跟AI的溝通之前先解決人和人之間的溝通 | 范育銘 (老范) | Official speaker detail available | AI 可以協助我們整理資訊、產生內容、加快工作，但設定目標、做出判斷與推動合作的，依然是人。 當人與人之間無法理解彼此，再好的工具也很難解決團隊裡的誤會與摩擦。 你是否遇過這些情況：明明已經說得很清楚，對方理解的卻是另一回事； 會議開了很久，大家反而更不確定下一步；每個人都在表達，彼此卻沒有真正連結。 溝通不只是把話說出去，更重要的是確認彼此如何理解資訊，並在差異中逐步形成共識。 這場工作坊不以理論講授為主，而是透過兩個精心設計的遊戲化體驗，帶領參與者親自觀察： • 為什麼同一段資訊，經過不同的人之後會產生不同的理 | 認證, 產品 | 7 | 10 | 5 | 6 | 5 | 6.6 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-14 | 15:30-17:30 | lab | 603+604 會議室 | 把「做完了」寫下來：90 分鐘做出一份機器能檢查的驗收清單 | 楊騏 (Ci) | WaCare 數位健康 Tech Lead | 這是一場 SDD（Spec-Driven Development）＋ Harness 的實作工作坊。90 分鐘，你會用 AI coding agent（不限品牌，Claude Code、Codex CLI 等皆可）跑一輪完整的開發流程：寫 spec、讓 agent 實作、驗收、修正。 流程： 1. 我先示範一次完整的 SDD + Harness 循環，從 spec 到 agent 產出到驗收。 2. 你自己動手跑一輪：寫 spec、讓 AI agent 實作，agent 回報「做完了」。 3. 針對這次產出寫 2– | harness, eval, agent, 驗收 | 7 | 8 | 8 | 7 | 9 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ✅ 推薦 | 2026-10-14 | 15:30-17:30 | lab | 605+606 會議室 | 從點子到產品：AI 驅動的現代軟體開發全流程實踐 | 林正祥 (ATai) | 奧思數位 技術總監 | (本場內容與 10/14 Room 605+606 10:10–12:10 工作坊相同，可依個人時間安排擇一場次參加。) 在軟體開發領域，AI 工具正在徹底改變產品團隊的工作方式。本演講將帶領聽眾深入探討如何利用 AI 工具鏈，從產品規劃、UI/UX 設計、程式開發到測試部署，實現一個高效且協作的現代開發流程。 演講將涵蓋以下核心主題： 首先，我們將介紹 AI 在產品規劃階段的應用。透過 Perplexity 進行市場研究與競爭分析，使用 AI 工具將零散想法轉化為結構化的產品需求文件，幫助產品經理與工程團隊快速對 | 架構, 一致性, 產品 | 7 | 4 | 10 | 7 | 9 | 7 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 已有 Voice AI / LetsBall 的 queue、worker、projection、retry、idempotency 與 eventually-consistent 實戰。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| △ 普通 | 2026-10-14 | 16:00-16:45 | session | BC 會議室 | 讓 Agent Skills 介入你的軟體開發的工作流 | 吳俊毅 (Gelis) | Gelis 的程式設計訓練營 資深. NET技術顧問 | Agenda 1.如何駕馭 AI 開發、AI 時代架構師的暖身運動 2.從『規格至上』來探討 Agent 驅動的規格分析與建模技巧 3.Spec 驅動開發？ - 這不只是將 prompts 變成可重複使用的命令 4.重新定義 AI 時代的 SDLC 軟體開發 5.用 Agent Skills 來定義統開發與設計流程方法 (Methodology) - 定義 Sequence/Domain Modeling 與程式碼的 Skills 6.最後，我們展示 Agent Skills 讓 AI 專注在特定 Context  | agent skill, context, agent, skill, 架構 | 6 | 8 | 7 | 5 | 8 | 6.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-14 | 16:00-16:45 | session | A 會議室 | 當 Secret 不再是秘密 | 邱繼平 (山姆大叔) | 架構師 | 在許多團隊中，Secret Management 往往被視為一個安全議題，因此大家投入大量心力討論 Azure Key Vault、Kubernetes Secret 或各種密碼管理工具。然而，當真正開始改善工作流程時，我發現最大的瓶頸並不是密碼存放的位置，而是整個 Secret 的生命週期缺乏一條能夠被所有角色理解的工作流。 在我們的組織中，Secret 曾散落於 Azure DevOps Library、Repository、Wiki、Excel、Teams，甚至存在於少數人的記憶中。更令人意外的是，即使已經導 | secret, skill, 治理, 架構, 安全 | 6 | 8 | 9 | 8 | 8 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| ✅ 推薦 | 2026-10-14 | 16:00-16:45 | session | DE 會議室 | Rule Driven Develpoment-AI時代的軟體開發策略 | 董大偉 (David) | 光岩資訊 資深技術顧問 | 透過 DevOps 平台與自動化流程，AI 已經可以從一張需求單開始，自動展出 User Story、Acceptance Criteria 與工作項目，接著自動完成程式碼開發、自動建立 Pull Request，並進行 AI Code Review、錯誤分析 與 Debug。 這代表著未來的開發流程，將不再是由開發者逐步操作每個環節，而是由人類提出需求與目標，AI 在 DevOps 工具與工程流程中持續完成開發與驗證工作。 然而，當 AI 能夠 End-to-End 自動開發時，最大的挑戰也不再是「AI 會不會寫 | acceptance, agent, 認證 | 6 | 10 | 7 | 7 | 8 | 7.1 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ✅ 推薦 | 2026-10-14 | 16:00-16:45 | session | F 會議室 | 解構 Agentic AI 時代的系統架構：A2A、x402、AP2 | 蕭兆洋 (Charles Hsiao) | 熱愛開源技術，專注於可觀測性、雲端架構與 AIOps。 | 這場演講不是三個協定的規格導讀。我會以「一個 Agent 的完整旅程」作為敘事主軸：從透過 A2A 協商任務開始，到收到 402 Payment Required、以 x402 完成鏈上小額支付。這趟旅程將透過講者開源的 Kubernetes 支付基礎設施 Ghost Pay 現場實際演示：以 Istio mTLS 與 Envoy Lua Filter 構建「隱形支付攔截層」，當業務 Agent 遭遇外部 402 挑戰時，Envoy sidecar 自動攔截流量並委派給叢集內的 Paymaster Agent 簽署 | agent, 架構 | 6 | 8 | 7 | 8 | 8 | 7 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-14 | 17:00-17:30 | session | BC 會議室 | 當架構設計被 AI 加速後，工程判斷力的養成與傳承該怎麼辦？ | 林承毅 (Jed) | 躍準科技有限公司 Founder | 「慢」的價值不在慢本身，而在過程裡發生的兩件事：context 的內化，以及方案選擇之間的掙扎——判斷力正是在這種不舒服裡長出來的。AI 壓縮了產出時間，也一併壓縮了這兩件事。資深者還能靠累積把關，但「AI 給什麼、看起來合理就收下」的下一代，判斷力要從哪裡養成？資深判斷又要趁什麼場合交接？ 這場分享不是呼籲放慢，而是把隱性的養成過程重新設計成顯性機制：從判斷力養成的條件談起，說明 AI 協作為何恰好破壞每一個；依「做錯後回頭的代價」篩選哪些決策放給 AI、哪些留給人；主體聚焦兩個可直接執行的做法——「人先設計、A | context, agent, 治理, 架構 | 6 | 10 | 7 | 8 | 8 | 7.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| △ 普通 | 2026-10-14 | 17:00-17:30 | session | A 會議室 | 可製造的 AI：讓 AI 成為工廠的第二大腦 | 戚務漢 (Caesar) | 正美科技 數位部 | 所謂可製造的 AI，是指 AI 不只會分析資料或生成內容，而是能進入製造流程，理解材料、設備、製程、品質與成本之間的關係，並能對客戶結果負責。 目前多數 AI 應用仍停留在單點功能或各自生態系內；但當 AI 開始參與製程建議、品質判斷與客戶交付時，就必須具備： 對客戶負責 可解釋 具成本效益 可擴展 可持續訓練與迭代 這也是為什麼 Digital Twins 在許多製造現場難以完整落地。製造並不是單一設備或參數的模擬，而是材料、設備、製程、批次、環境與成本的複雜組合。若要完整建模，成本與維護難度過高，且不一定符合實 | 架構 | 6 | 6 | 4 | 7 | 8 | 6.1 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| △ 普通 | 2026-10-14 | 17:00-17:30 | session | DE 會議室 | 「開發效能提升實戰」：Claude Design 搭配自建 Skill，團隊達到提升四倍產出 | 吳品毅 (阿咪 A-mi); 林杰伶 (Jennifer Lin) | 敦謙國際 經理 / Scrum Master; 從平面、包裝設計一路走進網頁與 UI/UX，累積多元的設計經驗，目前專注於數位產品與介面設計。參與 Hexa 旅宿通路管理系統的產品設計，從產品需求、操作流程到介面設計，與 PM、工程師共同推動產品落地。 | 我們將深入探討自建 Skill 的架構設計與實務落地經驗，分享團隊如何藉由精準的指令設計與流程拆解，成功克服傳統開發切換與協作的痛點，最終達成提升 4 倍開發產出的具體做法與實戰心得。 核心亮點 •技術落地：Claude Design 與自建 Skill 的整合架構與心法 •流程優化：如何將標準開發流程（SOP）轉化為高效 AI 協作指令 •實戰數據：達成 4 倍產出的關鍵指標與團隊轉型經驗談 聽眾收穫： 1.AI 協作流程化：掌握將團隊 SOP 與開發規範封裝為自建 Skill 的實務心法，減少 AI 產出偏離與 | skill, 架構, 產品 | 6 | 8 | 4 | 7 | 8 | 6.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ✅ 推薦 | 2026-10-14 | 17:00-17:30 | session | F 會議室 | AI Agent 時代：當人人都能快速上手，什麼才是真正的專業？ | 江佳佳 | 職業生涯從工程師開始，擔任過專案負責人與 Scrum Master，也擔任過數年的管理職然後轉職成為 Agile Coach，近期又轉變成 Project Manager，但其實做的事情一直都不是那麼純血，通常是團隊哪裡有坑就往哪裡填 ... | 分享重點： ．AI Agent 如何改變學習曲線 ．當人人都能快速上手，真正的專業是什麼？ 聽眾收穫： ．理解 AI 時代下，個人與團隊專業能力會如何轉變？該如何轉變？ 江佳佳 台中敏捷社群 現任組織者 職業生涯從工程師開始，擔任過專案負責人與 Scrum Master，也擔任過數年的管理職然後轉職成為 Agile Coach，近期又轉變成 Project Manager，但其實做的事情一直都不是那麼純血，通常是團隊哪裡有坑就往哪裡填 ... 從 2017 年開始接觸社群活動，從台下走到台上，是台中敏捷社群現任組織 | agent, 產品 | 6 | 8 | 7 | 8 | 8 | 7 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ○ 不優先 | 2026-10-15 | 10:00-10:10 | session | ABCDEF 會議室 | Welcome opening |  | Official speaker detail available | 中文 | software engineering | 4 | 10 | 4 | 0 | 4 | 4.3 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | none |
| ✅ 推薦 | 2026-10-15 | 10:10-12:10 | lab | 605+606 會議室 | AI 時代下,軟體團隊要怎麼設計? | 柯仁傑 (David Ko/敏捷三叔公) | Official speaker detail available | (本場內容與 10/15 Room 605+606 15:30–17:30 工作坊相同，可依個人時間安排擇一場次參加。) AI 讓生成程式碼、生成內容的速度大幅提升,但「判斷產出對不對」這件事並沒有跟著變快——這個落差,正是許多團隊在導入 AI coding 之後感受到的驗證瓶頸與 oracle problem:當驗收標準本身也模糊不清,「誰該負責看見全局、誰該判斷對錯」就變成組織設計的問題,而不只是技術問題。 這場工作坊用一個動手模擬遊戲讓與會者親身體驗這個落差。全員分組,用 AI 生圖工具合力復刻《清明上河圖》 | 驗收 | 7 | 8 | 8 | 6 | 9 | 7.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| △ 普通 | 2026-10-15 | 10:10-12:10 | lab | 607+608 會議室 | Google AI Studio X Antigravity 驗收實戰 | 陳佳新 (佳新哥) | 彰化軟體公司【奇步應用】創辦人暨執行長、LINE API Expert、GDG Changhua Organizer，也是 Microsoft AI MVP（2021–2026）。長期投入 LINE、AI 與地方數位轉型，把新技術真正做進地方服務現場，也持續透過社群分享實戰經驗。近年聚焦打造地方數位轉型支持系統，串起技術、人才與地方需求，希望用持續累積的行動，讓地方一年比一年更好。 | 「Vibe Coding」講了一兩年，大家都會了：你用自然語言請 AI 幫你寫，它很快給你一個能跑的東西。Agent-first 又更進一步：你給高階目標，Agent 自己規劃、實作、測試、驗證，最後跟你說「做完了」。 問題就在這句「做完了」。 我開一間軟體公司，在彰化與全台灣替在地團隊、企業和政府機關做了很多案子。這一年我把公司的出貨流程整個押在 AI 協作上，人只在關鍵節點把關（所謂的 Human in the loop）——Agent 出包，是我賠錢、責任我扛。押下去之後我最深的體會是：Agent 時代最稀缺 | agent, 驗收 | 7 | 3 | 10 | 7 | 9 | 6.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| △ 普通 | 2026-10-15 | 10:10-10:55 | session | ABCDEF 會議室 | 從一人 AI 工作流到團隊工程系統 | 謝浩哲 (HAO) | TSMC Senior IT Engineer | 本議程將以一套實際落地於個人開發流程的 AI Agent 工作流為起點，分享如何從 PRD、User Story、Design Document、Implementation Plan、Agent 實作到 Code Review，逐步建立可被 AI 讀取、執行與回饋的工程上下文。 除了 AI SDLC，本議程也會說明 Linter、Testing、Coding Guidelines、Git Hooks 與 CI 等傳統軟體工程實踐，如何成為約束 AI 行為、及早發現問題並建立品質回饋循環的重要基礎。 這套流程目前主 | lint, test, agent | 6 | 4 | 7 | 6 | 8 | 6.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | none |
| ⭐ 時段首選 · 🔥 強烈推薦 | 2026-10-15 | 10:10-12:10 | lab | 603+604 會議室 | AI Coding 治理實戰：從開發到交付的Harness工程 | 陳葵懋 (Ian Chen) | 一等一科技 研發部主任工程師 | (本場內容與 10/15 Room 607+608 13:00–15:00 工作坊相同，可依個人時間安排擇一場次參加。) AI Coding Agent 可以快速完成程式開發，但在實際專案中，團隊仍需要確認實作是否符合需求與架構規範、Code Review 是否確實完成，以及常見安全問題能否在建立 Pull Request 前被發現。 本工作坊將帶領參加者建立一套可實際運作的 AI Coding 本機治理流程。透過SDD 定義功能需求，使用 Skills 封裝開發規範，並建立 Developer、Code Revi | harness, mcp, security, agent, skill, 治理, 架構, 安全 | 9 | 6 | 8 | 8 | 9 | 8.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| △ 普通 | 2026-10-15 | 11:15-12:00 | session | F 會議室 | MCP 時代的 AI Agent 資安攻防 | 吳勝繙 (Chris) | Official speaker detail available | 聽眾收穫： 2026 前兩月已有 30+ MCP 相關 CVE，但多數開發者仍在「裝了就用」的階段。聽眾將帶走：(1) 一張可直接套用的 MCP 架構安全檢查清單 (2) 「智能決策層與高權限執行層分離」的設計原則 (3) 一個判斷框架：你的 Agent 系統需不需要在工具呼叫層加裝即時攔截機制（答案取決於你的資料來源是否可被第三方寫入）。 吳勝繙 (Chris) 數位發展部 科長 數位發展部共用系統科科長，主要管理共用系統維運... 今天我就是一個開發者，工作時間以外把開發當打怪，去年開始從 Vibe codin | harness, mcp, injection, context, agent, 架構, 安全 | 6 | 4 | 7 | 6 | 8 | 6.5 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-15 | 11:15-12:00 | session | A 會議室 | 當 AI 開始調查事故：讓 Kubernetes 告警從噪音變決策 | Duo | 大型電商 Senior Engineer | 你一臉厭世打開電腦，Grafana 一個視窗、Loki 一個視窗、K8s 事件一個視窗 最近誰動了部署又是另一個地方，你開始把這些線索一片一片拼起來試圖釐清到底哪裡出了問題? 每個維運過的人都經歷過這一幕 事故發生時，消耗時間的往往不是修復而是調查 可觀測性提供了你需要的資料，卻沒有提供答案 我將分享打造 AI 輔助事故調查系統的過程，以及如何把 AI 導入問題查找流程 目標很單純 當告警觸發的那一刻由 AI 接手「拼線索」這件苦差事 我們希望建立的不是一位會聊天的 AI，而是一位能協助 SRE 更快找出 Root | 架構 | 6 | 10 | 7 | 8 | 8 | 7.3 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已有 Geo RAG + Qdrant + Kernel Memory production implementation，基礎內容可能高度重複。 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| △ 普通 | 2026-10-15 | 11:15-12:00 | session | BC 會議室 | 買完 AI 工具，然後呢？ | 董淳吉 (Marcus Tung) | 鼎恒數位科技 協理 | 在經營會議上被問到這句時，我腦袋一片空白。帳號都開好了，同仁也真的每天在用，但真要證明這筆錢花得值得，我拿得出來的，只有使用次數。 一年前開始用 AI 時，我其實沒想那麼多。事情太多、人力不夠，我只想趕快清掉堆積如山的工作。直到後來才發現：一個人用得順，不代表整個團隊真的變快；團隊用起來了，也不代表公司真的得到更多價值。 這一年，我陸續闖了三關，而且每一關都先摔過一次： • 怎麼分工：哪些工作可以交給 AI？哪些判斷、驗收與責任一定要留在人身上？ • 怎麼讓團隊跟上：為什麼工具導入了、教育訓練也辦了，日常的工作方式 | observability, 驗收 | 6 | 10 | 4 | 5 | 4 | 6 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| △ 普通 | 2026-10-15 | 11:15-12:00 | session | DE 會議室 | AI在企業的應用與挑戰之路 | Edward Kuo | Microsoft MVP | 我會分享內容中會有提到幾個項目 Mutil-Agent 的設計種類，和應用場景 採用企業案例說明RAG在LLM解決方案並非都可以被接受 Vibe Coding並非有實際效益，他會帶來一些危害，同時也會因為Token成本造成新的Token管理議題 說明完上述流程，用自己在企業擔任AI策略管理者，說明我們導入AI的流程 聽眾收穫： 可以了解企業導入AI的心路歷程與各項轉折的思考點和做法。同時，也讓聽眾了解AI並非是企業解決問題的唯一解決方案 Edward Kuo Microsoft MVP 現任美商科技製造公司資訊處資 | agent, 治理, 架構 | 6 | 6 | 7 | 8 | 4 | 6.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 | 已有 Geo RAG + Qdrant + Kernel Memory production implementation，基礎內容可能高度重複。 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| ✅ 推薦 | 2026-10-15 | 13:00-15:00 | lab | 603+604 會議室 | 打造跨模型 AI Agent 的 CI/CD 管線：從本地開發到雲端部署 | Jimmy Liao | LeapDesign Co-founder / CTO | AI Agent 在筆電上跑得好好的，搬上雲端卻常常直接設定跑掉，API Key 又怕外流，而且往往當掉卻沒有任何錯誤訊息。這場 workshop 會帶大家五分鐘架好一套跨模型的 AI Native 工作流程，現場示範快速更換 (甚至不用手動更換) provider 而不需改程式邏輯，並用真實案例示範如何用數字而非直覺決定要不要優化，最後講怎麼把這套東西安全部署上雲端。 #Gemini #GoogleDeveloperGroups #GDE #MVP #AIGateway #MultiModel #CICD #Ag | ci/cd, agent, 安全 | 7 | 4 | 8 | 8 | 9 | 7.3 | 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ⭐ 時段首選 · 🔥 強烈推薦 | 2026-10-15 | 13:00-15:00 | lab | 607+608 會議室 | AI Coding 治理實戰：從開發到交付的Harness工程 | 陳葵懋 (Ian Chen) | 一等一科技 研發部主任工程師 | (本場內容與 10/15 Room 603+604 10:10–12:10 工作坊相同，可依個人時間安排擇一場次參加。) AI Coding Agent 可以快速完成程式開發，但在實際專案中，團隊仍需要確認實作是否符合需求與架構規範、Code Review 是否確實完成，以及常見安全問題能否在建立 Pull Request 前被發現。 本工作坊將帶領參加者建立一套可實際運作的 AI Coding 本機治理流程。透過SDD 定義功能需求，使用 Skills 封裝開發規範，並建立 Developer、Code Revi | harness, mcp, security, agent, skill, 治理, 架構, 安全 | 9 | 6 | 8 | 8 | 9 | 8.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| ✅ 推薦 | 2026-10-15 | 13:00-15:00 | lab | 605+606 會議室 | 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 | 吳柏毅 (appleboy) | Mediatek 工程師 | (本場內容與 10/14 Room 605+606 13:00–15:00 工作坊相同，可依個人時間安排擇一場次參加。) 當 AI Agent、MCP Server、CLI 工具在公司內部數十倍增長，「帳密寫死進原始碼」與「Token 發出去就追不回來」會從個別小問題，升級成系統性的資安風險。MCP 授權規格其實已經給出方向——把 MCP Server 視為 OAuth 的 Resource Server——但真正卡住工程師的是中間幾層：Client 怎麼知道該去哪裡登入？Token 憑什麼只能存取「這一台」MCP | mcp, authorization, secret, agent, 治理, 架構, 安全, 認證 | 7 | 8 | 10 | 6 | 9 | 7.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| △ 普通 | 2026-10-15 | 13:30-14:00 | session | BC 會議室 | 以敵為師的軟體防禦：導入AI紅隊思維與MITRE ATLAS的攻擊面拆解 | 林毅力 (Stanley) | 台中商業銀行 技術副理 | 講者將結合國際主流的 MITRE ATLAS 威脅矩陣，系統性拆解從「模型指紋識別(Model Fingerprinting)」到「對抗性提示詞注入（Prompt Injection）」及「向量資料庫檢索污染（RAG Poisoning）」的完整攻擊鏈，並探討 AI Agent 在權限過度授權下的橫向移動與漏洞利用路徑。 最後，本次議程將分享如何由攻擊路徑逆向回推，建立包含「AI Fuzzing 漏洞挖掘」與「多層級防禦護欄（Guardrails）」的縱深防禦強化機制，協助企業嘗試建立運行期的持續合規監測，化被動防 | injection, mitre atlas, agent, 治理, 認證, 監測 | 6 | 6 | 7 | 8 | 8 | 6.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 | 已有 Geo RAG + Qdrant + Kernel Memory production implementation，基礎內容可能高度重複。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-15 | 13:30-14:00 | session | DE 會議室 | AI Agent Payments：x402 架構實戰 | York Chang | 國泰金控 工程師 | 本次分享將從 AI Agent 支付需求出發，說明傳統 API Key、訂閱制與人工授權流程在 Agentic Workflow 中的限制，並進一步拆解 x402 的核心架構，包括 client、server、payment requirement、facilitator、付款驗證與服務回應流程。 除了架構與實作，本議程也會探討 x402 在實務落地時需要面對的安全與治理問題，例如支付授權、重放攻擊、防濫用機制、API 存取控制、交易驗證、成本控管與觀測性設計。最後將延伸討論 x402 在 AI Agent Eco | workflow, agent, 治理, 架構, 安全 | 6 | 10 | 7 | 6 | 8 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| △ 普通 | 2026-10-15 | 13:30-14:00 | session | F 會議室 | 使用過狩野分析與NPS嗎？讓我們一起務實的簡化它 | 陳啟彰 (Nor) | 領潮創意設計 服務設計研究顧問 | Kano Model 能協助我們了解不同功能對使用者滿意度的影響，但在問卷編撰與施測過程中，較容易因題目理解產生誤會。 NPS 則是廣泛用於評估品牌印象與使用者推薦意願的工具，但「使用者填答的意願」是否真的會轉化為「實際行為」，也是值得思考的問題。 這次的分享將從這兩種方法出發，重新檢視它們在實務上的限制，把 Kano Model 的操作方式簡化；同時，也將帶大家進回歸使用者的真實行為，從NPS的基本定義出發，進行不用問卷的NPS調查。 聽眾收穫： 1. 理解Kano Model與NPS的內涵 2. 如何簡化Kan | software engineering | 4 | 10 | 7 | 6 | 8 | 6.1 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| △ 普通 | 2026-10-15 | 13:30-14:00 | session | A 會議室 | 初級工程師如何 AI 賦能的翻寫一個跟自己年紀差不多大的框架 | Maple Kuo | Claude Taiwan 社群管理員 現職網站開發工程師 | 聽眾收穫： 1. 一套可直接複製的 subagent pipeline 設計:PM → 架構 → 實作 → 測試審查 → 程式審查 → QA 的角色拆分與銜接文件 2. 各角色 system prompt 的設計原則:如何把工程哲學與判準寫進 prompt,而不是每次重講 3. AI 時代的 SDLC 4. 單人開發者也能維持團隊級的品質防線 Maple Kuo Claude Taiwan 社群管理員 現職網站開發工程師 曾任《2025 Hello World Dev Conference》講者，從 GPT-3.5 | context, test, agent, skill, 驗收, 架構 | 6 | 6 | 7 | 5 | 8 | 6.6 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ✅ 推薦 | 2026-10-15 | 14:15-15:00 | session | A 會議室 | AI O11y：數據決策到技術選型 | 張哲嘉 (Che Chia Chang) | Che-Chia Chang 是一名專注於後端開發、開發維運、容器化應用及 Kubernetes 開發與管理的技術專家，同時也是 Microsoft 最有價值專業人士（MVP）。 | 本次分享將介紹 LLM observability 的基本概念，並以 Langfuse 為例，示範如何建立 tracing、觀察 model call 與 agent workflow，從 traces 中分析品質、延遲與成本，逐步建立可供開發與維運使用的 feedback loop。 1. 為什麼 LLM application 需要新的 observability 2. Trace、span、generation 與 metadata 3. 使用 Langfuse 收集與查看 LLM traces 4. 從 t | observability, workflow, eval, agent, 產品 | 6 | 6 | 7 | 8 | 8 | 7.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-15 | 14:15-15:00 | session | F 會議室 | 別讓 Agent 瞎掰：用 Semantic Layer 打造可信賴的企業 AI | 林士凱 (Danny) | Amazon Web Services (AWS) 解決方案架構師，超過十年雲端架構設計經驗，持有 AWS 及 Google Cloud Architect 認證。專注於 AI、資料工程、大數據分析及圖技術領域，涵蓋 Knowledge Graph、GraphRAG 與語義層 (Semantic Layer) 設計。曾協助多間企業規劃雲端資料平台與 AI 應用架構。 | 根源在於 AI 缺少一顆「企業大腦」。業務指標怎麼算、哪些資料要排除、什麼狀態代表什麼意思，這些知識只活在資深員工和散落的文件中，模型從未學過。 本議程展示如何用 Knowledge Graph 為 AI Agent 建立語意層(Semantic Layer)，讓它在回答問題前先查詢業務規則，像資深同事一樣理解脈絡再行動。議程含完整 live demo，以金融業和製造業兩個場景，直接對比有/沒有語意層時，同一個問題產出的結果差異。 聽眾收穫： 搞清楚 Semantic Layer、Ontology、Knowledg | knowledge graph, semantic layer, agent, 架構, 認證 | 8 | 8 | 7 | 8 | 8 | 7.5 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 | 已有 Geo RAG + Qdrant + Kernel Memory production implementation，基礎內容可能高度重複。 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| △ 普通 | 2026-10-15 | 14:15-15:00 | session | DE 會議室 | AI 時代下測試的迷思——為什麼綠燈越多，品質卻沒有變好 | 柯仁傑 (David Ko/敏捷三叔公) | Official speaker detail available | 這場分享我會拆解幾個在 AI 開發現場最常見的誤解，全程用可查證的研究數據加以佐證說明（METR 隨機對照試驗、DORA 2026、Sonar 2026），並穿插測試業界大佬的觀點。 大綱: 一、AI 對軟體測試所帶來的影響 二、迷思群一・綠燈幻覺——覆蓋率、綠燈、AI 寫的測試，為什麼都騙得了你 三、迷思群二・感知與現實的落差——你以為的快、你以為的好、你以為的把關，數據都不同意 四、迷思群三・人與規格反而更重要——oracle problem、模型越強缺口越大、AI 審 AI 的盲點 五、核心矛盾:很多團隊「要 | software engineering | 4 | 10 | 7 | 6 | 8 | 6.1 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| △ 普通 | 2026-10-15 | 14:15-15:00 | session | BC 會議室 | 當 AI 加入團隊：打造可審查、可驗證、會自我改善的 AI 開發工作流 | 蔡景翔 (James Tsai) | 骨架資訊有限公司 Microsoft MVP | 問題的核心不是模型不夠強，而是 AI 的行為缺乏可治理的框架。 本演講分享 AIWorkflow 的設計與實戰 — 一套刻意輕量的做法：不引入常駐服務、向量資料庫或新平台，完全以 Git、Markdown 與腳本，把團隊的 AI 協作變成可審查的工程資產。內容拆解四個關鍵機制： 1. 分層與路由：將能力拆成 Workflow、Agent、Skill、Knowledge、Prompt，透過 manifest 讓 AI 每次只載入最小必要上下文。 2. 行為契約：定義可觀察的完成條件、不得宣稱未執行的驗證、同一方法失敗 | ci/cd, workflow, agent, skill, 治理, 安全 | 6 | 4 | 7 | 8 | 8 | 6.8 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已有 Geo RAG + Qdrant + Kernel Memory production implementation，基礎內容可能高度重複。 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| ✅ 推薦 | 2026-10-15 | 15:15-15:45 | session | F 會議室 | 透過 ACP 解放 Terminal：打造 Coding Agent 的協作模式 | Neo Hsu | TXOne Networks Staff Software Engineer | 過去，我曾自行開發 Adapter，將 Discord／Telegram 串接到 Coding CLI 的 headless 模式。功能雖然可以運作，但實際使用後才發現：聊天室裡看似連續的協作，底層可能只是一段段獨立的 CLI 呼叫。 真正困難的不是訊息串接，而是如何讓 Coding Agent 持續工作。 Session lifecycle、Context 管理、Streaming、工具呼叫與權限管理、Cancel／Resume，以及不同 Coding CLI 之間的介面差異，最後都必須由 Adapter 自行處 | context, agent, 治理, 架構, 產品 | 6 | 8 | 7 | 8 | 8 | 7.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| △ 普通 | 2026-10-15 | 15:15-15:45 | session | A 會議室 | 讓 AI Agent 記住你：從零打造仿生長期記憶系統的設計決策 | 吳勝繙 (Chris) | Official speaker detail available | 聽眾收穫： 多數 Agent 框架只提供 vector store，缺乏記憶的生命週期管理。聽眾將帶走：(1) 四個可複製的仿生記憶設計模式及其適用邊界 (2) 一套 Cloudflare Workers 上的記憶系統架構藍圖 (3) 「何時該自建記憶系統 vs 用現成方案」的判斷框架。 吳勝繙 (Chris) 數位發展部 科長 數位發展部共用系統科科長，主要管理共用系統維運... 今天我就是一個開發者，工作時間以外把開發當打怪，去年開始從 Vibe coding 畢業，將重心放在最近被稱為軟體 3.0 的領域，從 | agent, 架構 | 6 | 4 | 7 | 6 | 8 | 6.1 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已有 Geo RAG + Qdrant + Kernel Memory production implementation，基礎內容可能高度重複。 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 已有 Voice AI / LetsBall 的 queue、worker、projection、retry、idempotency 與 eventually-consistent 實戰。 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| △ 普通 | 2026-10-15 | 15:15-15:45 | session | BC 會議室 | 從一本旅遊書到 LINE OMO 服務：一個很殘酷的真實漏斗教會我的事 | 陳佳新 (佳新哥) | 彰化軟體公司【奇步應用】創辦人暨執行長、LINE API Expert、GDG Changhua Organizer，也是 Microsoft AI MVP（2021–2026）。長期投入 LINE、AI 與地方數位轉型，把新技術真正做進地方服務現場，也持續透過社群分享實戰經驗。近年聚焦打造地方數位轉型支持系統，串起技術、人才與地方需求，希望用持續累積的行動，讓地方一年比一年更好。 | 這套服務裡也藏了兩個輕量但實用的 AI 設計：一個是 LINE 上的心理測驗推薦系統，用幾個問題把讀者導向適合他的內容；另一個更有趣——你上傳一張照片，我用 Gemini 的多模態圖像理解看圖「占卜」，推薦你翻開書的第幾頁、去吃哪一道在地美食，背後是一層把圖像辨識結果對應到書頁與美食的 prompt 設計。我會分享這種「把 AI 當成體驗的一部分、而不是噱頭」的設計考量、prompt 怎麼設計、實際的使用量與 API 成本，以及它在真實使用裡的表現。 而真正的重頭戲，是把轉換漏斗攤開。這套體驗的入場是付費的：兩刷約 | 架構 | 6 | 8 | 7 | 7 | 4 | 6.4 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-15 | 15:15-15:45 | session | DE 會議室 | 每個人都有 AI，為什麼團隊還是這麼慢？ | 薛良斌 (hlb/布丁) | 薛良斌（hlb／布丁），MeetAndy AI 共同創辦人、連續創業者。他於 2006 年創辦 Handlino，推出活動報名服務 Registrano；Registrano 後加入 KKBOX，發展成台灣主要的活動售票平台之一 KKTIX。之後曾任 cacaFly 產品總監，並於 2018 年共同創辦 InfuseAI，協助企業提升 AI 開發效率。2024 年共同創辦 MeetAndy AI，Andy 是產品團隊的 AI 隊友，協助團隊在同一個討論串中，從想法一路走到產品交付，並把每一次交付累積成團隊可重複運用的知識。 | AI 解掉了個人的生產力，卻沒解掉團隊的協調。以前產品團隊是 PM、設計、工程、QA 四個人四份脈絡；現在變成四個人加四個 AI，每個 AI 都有自己的 context、假設和版本。你會聽到很多場講怎麼讓產出翻幾倍，但產出翻倍不等於團隊變快，因為卡的是協調，不是產出。 這場談的是：怎麼讓一群人和一群 AI 在同一份 context 裡工作。很多人已經有了自己的第二大腦，團隊缺的是第三大腦。我會用 MeetAndy 在產品團隊的第一手經驗，講如何從 customer insights 到 PR，讓需求、決策、程式碼、 | context, agent, 產品 | 6 | 10 | 7 | 8 | 8 | 7.7 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| ✅ 推薦 | 2026-10-15 | 15:30-17:30 | lab | 607+608 會議室 | 從瀑布式的崩潰到 AI 的拯救：用積木與 AI 助手重塑敏捷協作 | 葉承宇 (丁哥Dean Yeh) | 現任科技大廠人工智慧部資深首席工程師與大學資訊管理系講師，同時擔任台灣敏捷協會理事。擁有敏捷/專案管理等多項國際專業認證，專長於 AI 流程轉型、軟體品質管理與體驗式敏捷教學，長期致力於將積木實作與生成式 AI 工具深度融合，幫助企業與學子在實務中落地敏捷思維。 | 在變動劇烈的生成式 AI 時代，您的團隊是否依然陷在「前期花費大量時間繪製完美藍圖，一旦市場需求變更，原本計畫瞬間失去效用」的瀑布式泥淖中？抑或是導入了 Scrum，卻覺得各種儀式流於形式，無法發揮實質價值？ 這是一場融合「樂高積木實體協作」與「生成式 AI（GenAI）數位賦能」的沉浸式體驗工作坊！本活動將帶領學員經歷一場真實的開發轉型之旅。我們將引入 Scrum 框架，並首次將 AI Agents 深度融入敏捷開發的各個環節。您將學習如何與 AI 進行需求溝通與故事卡撰寫、或是讓 AI 協助魔術估算與任務拆解， | agent, 驗收, 認證, 產品 | 7 | 8 | 8 | 7 | 9 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ✅ 推薦 | 2026-10-15 | 15:30-17:30 | lab | 605+606 會議室 | AI 時代下,軟體團隊要怎麼設計? | 柯仁傑 (David Ko/敏捷三叔公) | Official speaker detail available | (本場內容與 10/15 Room 605+606 10:10–12:10 工作坊相同，可依個人時間安排擇一場次參加。) AI 讓生成程式碼、生成內容的速度大幅提升,但「判斷產出對不對」這件事並沒有跟著變快——這個落差,正是許多團隊在導入 AI coding 之後感受到的驗證瓶頸與 oracle problem:當驗收標準本身也模糊不清,「誰該負責看見全局、誰該判斷對錯」就變成組織設計的問題,而不只是技術問題。 這場工作坊用一個動手模擬遊戲讓與會者親身體驗這個落差。全員分組,用 AI 生圖工具合力復刻《清明上河圖》 | 驗收 | 7 | 8 | 8 | 6 | 9 | 7.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| ⭐ 時段首選 · 🔥 強烈推薦 | 2026-10-15 | 15:30-17:30 | lab | 603+604 會議室 | AI 驅動架構實戰：Structurizr × OpenCode | 郭孟坤 (Mansun Kuo) | 目前於外商擔任雲端/軟體架構師，熱衷於技術分享與社群交流。近期專注於 AI 工具的落地與實踐，致力於推動團隊全面導入 AI 技術，優化開發與維運（DevOps）流程，以科技賦能團隊，實現高效能敏捷開發。 | (本場內容與 10/14 Room 607+608 10:10–12:10 工作坊相同，可依個人時間安排擇一場次參加。) 架構師的核心職責從來不只是「畫圖」，而是驅動跨角色共識與決策落地，讓不同角色在同一份事實來源上協作。2026 年，生成式 AI 已深度介入開發流程，但這項使命依然是個不容易的任務。傳統圖形化介面繪製工具需要大量的人工介入和手動微調，諸如 Mermaid、PlantUML 這類「Diagrams as Code 1.0」工具雖使用程式碼產生圖形，本質仍是「用打字取代畫圖」，產出的依然是一張張獨立的 | mcp, agent, 架構 | 7 | 8 | 10 | 8 | 9 | 8.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 Full-stack / backend / API / frontend 基礎已具備，新增邊際價值有限。 | same interval |
| ✅ 推薦 | 2026-10-15 | 16:00-16:45 | session | A 會議室 | 同一個 Prompt 為什麼差這麼多？——從踩坑到 Harness Engineering | 許舜雯 (Olivia Shiu) | 現職 AWS 解決方案架構師，服務橫跨電信、串流媒體、製造、機器人等產業。日常任務：陪客戶解架構的坑、聊 AI 的好與壞、聽他們吐槽 AI 帶來的職場焦慮。正職是架構師，副業是「它平常不會這樣」解釋專員。 | 聽眾收穫： 沒有賣藥環節。你會帶走三樣東西：一套通靈 SOP——AI 出事時先問是模型還是 Harness 的鍋；一張對症下藥表——不穩定、燒 token、context 塞爆各有解法（routing、caching、compaction、verification gates）；還有一場真實災難 trace 的完整解剖。建議至少用過 Claude Code/OpenClaw 等 agentic 工具，會更有感。 許舜雯 (Olivia Shiu) Amazon Web Services Solutions Arch | harness, verification, context, agent, 架構 | 8 | 8 | 7 | 7 | 8 | 7.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ⭐ 時段首選 · 🔥 強烈推薦 | 2026-10-15 | 16:00-16:45 | session | DE 會議室 | AI Gateway：AI 治理的第一步 | 張哲嘉 (Che Chia Chang) | Che-Chia Chang 是一名專注於後端開發、開發維運、容器化應用及 Kubernetes 開發與管理的技術專家，同時也是 Microsoft 最有價值專業人士（MVP）。 | 本次分享將從實務問題出發，介紹 AI Gateway 的核心能力與導入方式，並討論它能解決什麼、不能解決什麼，以及如何與 observability、evaluation 和 AI application workflow 整合。 1. 為什麼團隊需要 AI Gateway 2. 統一模型存取、路由與 fallback 3. API Key、權限與成本治理 4. 串接 tracing、logging 與 LLM observability 5. 以實務情境設計 AI Gateway workflow 6. 導入限制 | observability, architecture, workflow, eval, 治理, 架構 | 8 | 10 | 7 | 8 | 8 | 8.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| △ 普通 | 2026-10-15 | 16:00-16:45 | session | F 會議室 | AI 把寫程式變便宜了，那開發者還剩下什麼？ | 鄭重男 (Nickle) | 國軍高雄總醫院 資訊室主任 | 不談特定框架、不推任何工具，只談一件事：軟體從來就不只是程式碼。決定要做什麼、決定不做什麼、驗證它能不能上線、出事的時候誰扛責任、那些沒被寫進 repo 的上下文、以及該放手讓 AI 跑還是該親自把關的臨界判斷，這些貴的部分，才是 AI 之後真正決定成敗的地方。 我會用自己一個人把構想送進正式環境的實際經驗，包括在醫院這種不能出錯的場域裡，怎麼判斷哪裡可以全交給 AI、哪裡必須人在迴圈。你會帶走一份可以馬上對照自己專案的判斷力清單，而不是又一個「AI 很厲害」的示範。 聽眾收穫： 聽眾將了解 AI 如何實際參與需求 | 治理, 架構, 安全 | 6 | 4 | 7 | 8 | 8 | 6.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | 已完成 GitHub Actions → GHCR → VPS → Docker Compose production pipeline。 | same interval |
| ✅ 推薦 | 2026-10-15 | 16:00-16:45 | session | BC 會議室 | 都用AI寫Code了，工程師若再往前一步：Product Builder | 劉兆恭 (JUGG) | 擁有超過 18 年軟體產業經驗，工程師出身，曾任職於 Appier、Trend Micro、17 Live、HandsUP 等國際化大型軟體公司與新創，歷任工程師、產品經理、專案經理、團隊主管與敏捷教練，具備少見的跨技術與產品視角。 | 當實作不再稀缺，工程師的價值該往哪裡移？如果再往前走一步，走進上游，成為 Product Builder 呢？當你用 AI 寫 Code，你和 AI 就組成了一支最小的開發團隊，AI 是你的 Dev Team，而你，得學會當自己的 PO。好消息是，你需要的工具其實早就有了：痛點分析、User Story、Acceptance Criteria，這些敏捷 PO 打磨多年的工法，在這個 AI 時代，也是我們工程師可以跨過去的技能包。 我是工程師出身，有超過十八年的技術底，後來也做過 PM，從需求探索到程式實作都親手走過 | acceptance, 產品 | 6 | 8 | 7 | 8 | 8 | 7 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| △ 普通 | 2026-10-15 | 17:00-17:30 | session | A 會議室 | 從痛點到產品：用資料與 AI 重新定義產品的規劃邏輯 | 孫甫璋 (udothemath) | 玉山銀行 主任工程師 | 過程中最大的挑戰不是模型本身，而是如何把「資料洞察」轉譯成「產品需求」：從痛點假設、資料驗證、邏輯設計，到具體服務原型與效益量化，每一步都需要重新思考產品規劃與資料分析角色之間的分工方式。分享內容將涵蓋團隊如何運用 AI 工具輔助發想與文件撰寫、如何用資料驗證假設而非憑感覺做決策，以及在既有組織流程中導入資料驅動思維時常見的挑戰與因應方式。 聽眾收穫： 對「AI 驅動的產品規劃流程」、「資料驅動需求定義方法論」有興趣的產品經理、資料工作者，以及想了解數位轉型實務案例的開發者。 孫甫璋 (udothemath) 玉山 | 產品 | 6 | 10 | 7 | 5 | 4 | 6.4 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| ⭐ 時段首選 · ✅ 推薦 | 2026-10-15 | 17:00-17:30 | session | BC 會議室 | 光靠 Prompt 守不住架構：用 Lint 與 Architecture Test 打造 Agentic Coding 防護牆 | Neo Hsu | TXOne Networks Staff Software Engineer | 許多團隊會把架構規範寫進 AGENTS.md、CLAUDE.md 或 .github/copilot-instructions.md：domain 不得依賴 infrastructure、frontend component 不得直接呼叫 API client、不同 feature 不得任意跨界。 即使這些規範已經進入 Context，它們仍然只是 soft constraints，無法保證 Coding Agent 在每一輪修改中都穩定遵守。 任務越長，架構越容易被最短路徑侵蝕。 當修正迴圈增加，Agent 經常 | architecture test, context, architecture, lint, test, agent, 治理, 架構 | 6 | 8 | 7 | 8 | 8 | 7.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 無明顯重複；應追問其 production 限制、失敗模式與可移植 artifact。 | same interval |
| ✅ 推薦 | 2026-10-15 | 17:00-17:30 | session | DE 會議室 | 挖掘技能的全新可能性 | 尹相志 | 數據決策股份有限公司 技術長 | 這場演講將從「路由型技能」談起，說明如何把同一領域的功能拆成子模組，再依使用者意圖、任務條件與執行結果，決定何時呼叫哪些模組。我們會討論模組的分工與輸入輸出、流程如何分支、失敗時如何回退，以及在哪些環節檢查品質，讓動態工作流的設計有具體依據。 技能投入使用後，還需要持續檢查它是否符合需求。因此，演講也會涵蓋技能的生命週期管理：從建立、測試與評估，到融合外部技能與自行持續進化的完整生命週期管理議題， 這 30 分鐘適合已有 AI 工具或 Agent 使用經驗的開發者、架構師與產品規劃者。我們將聚焦在實際設計時需要做的 | agent, skill, 架構, 產品 | 6 | 10 | 7 | 8 | 8 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |
| △ 普通 | 2026-10-15 | 17:00-17:30 | session | F 會議室 | 從 Sprint 到 Prompt：用 AIDD 從 0 打造 LINE Bot | Zona Wang | LINE 台灣 Tech Evangelist | 但當 AI Coding Agent 開始真正進入開發流程後，我發現熟悉的節奏正在改變。 這場分享，我將以從 0 打造 LINE Bot 的實際經驗，帶大家看看如何透過 AIDD（AI-Driven Development），讓 AI 不只是負責「寫 Code」，而是參與需求釐清、規劃、實作、驗證到持續迭代的完整開發流程。 我也會從過去擔任 Scrum Master 的經驗出發，對照過去跑 Scrum 與現在採用 AIDD 開發時，在需求拆解、開發節奏、角色分工與迭代方式上有什麼不同，以及當開發團隊多了一位隨時可以 | agent, 產品 | 6 | 8 | 7 | 7 | 8 | 6.8 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | 已有大量 Codex、Agent Skills、rules 與 AI-assisted implementation 經驗。 | same interval |

## Conflict Groups

### 2026-10-14 10:00-10:10

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | Welcome opening | 4.3 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 |

### ⭐ My Pick

Welcome opening

### Runner-up

None

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 10:10-10:55

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 以一些範例來討論AI Coding新時代的團隊開發 | 6.4 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |

### ⭐ My Pick

以一些範例來討論AI Coding新時代的團隊開發

### Runner-up

None

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 10:10-12:10

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | AI 驅動架構實戰：Structurizr × OpenCode | 8.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |
| 2 | 為 Agentic AI 設計前端狀態機與即時回饋介面 | 7.2 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 3 | 從點子到產品：AI 驅動的現代軟體開發全流程實踐 | 7 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |

### ⭐ My Pick

AI 驅動架構實戰：Structurizr × OpenCode

### Runner-up

為 Agentic AI 設計前端狀態機與即時回饋介面

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 11:15-12:00

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | AI 工具爆發時代的企業身分認證治理實戰 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 2 | 產出的人不能驗自己：AI 時代的驗收設計 | 7.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 |
| 3 | 自己刻 Agent 框架：最難的不是呼叫 LLM | 6.5 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |
| 4 | 當網站客群不再是人類：WebMCP 的前端新革命 | 6.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |

### ⭐ My Pick

AI 工具爆發時代的企業身分認證治理實戰

### Runner-up

產出的人不能驗自己：AI 時代的驗收設計

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 13:00-15:00

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 讓 AI 讀懂你的系統 with knowledge graph | 8.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 |
| 2 | 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 | 7.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 3 | 通用 AI CLI vs. 場景專用 AI：以 Lovable Web 開發為例的效能實測 | 7 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |

### ⭐ My Pick

讓 AI 讀懂你的系統 with knowledge graph

### Runner-up

讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 13:30-14:00

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | LLM Wiki：企業內部知識問答系統的架構演進 | 6.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 |
| 2 | 用 AI 工作流重整事件驅動交易系統的一致性、效能與監測 | 6.8 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 3 | AI Workflow：打造 PM 的第二大腦 | 6.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 4 | AI 時代下的另類多工與心流 ：碎片化工作中的「動態專注」法則 | 5.3 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 |

### ⭐ My Pick

LLM Wiki：企業內部知識問答系統的架構演進

### Runner-up

用 AI 工作流重整事件驅動交易系統的一致性、效能與監測

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 14:15-15:00

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 從寫得快到交付可信的 AI Coding 工程戰場 | 7.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 2 | 懂行規的 Agent：把規範變成技能，自動化開發到部署 | 7.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |
| 3 | 讓工程師失業的 N + 1 道陰影 | 6.8 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 |
| 4 | 讓IT主管睡不著的課題，台灣企業Agent規模化的聖杯考驗 | 6.6 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |

### ⭐ My Pick

從寫得快到交付可信的 AI Coding 工程戰場

### Runner-up

懂行規的 Agent：把規範變成技能，自動化開發到部署

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 15:15-15:45

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 雲端把花錢的權力交給了工程師，然後呢？ | 7.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 |
| 2 | 從 Hello World 看懂 AI 開發工具的計費結構——如何省得到錢 | 7.3 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 3 | 穩才是快 ～ 以 OKF 打造 Agentic AIOps 治理閉環 | 6.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 4 | AI 導入之後：傳統開發團隊的角色鬆動與開發新節奏 | 6.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |

### ⭐ My Pick

雲端把花錢的權力交給了工程師，然後呢？

### Runner-up

從 Hello World 看懂 AI 開發工具的計費結構——如何省得到錢

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 15:30-17:30

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 把「做完了」寫下來：90 分鐘做出一份機器能檢查的驗收清單 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 |
| 2 | 從點子到產品：AI 驅動的現代軟體開發全流程實踐 | 7 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |
| 3 | 在解決跟AI的溝通之前先解決人和人之間的溝通 | 6.6 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |

### ⭐ My Pick

把「做完了」寫下來：90 分鐘做出一份機器能檢查的驗收清單

### Runner-up

從點子到產品：AI 驅動的現代軟體開發全流程實踐

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 16:00-16:45

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 當 Secret 不再是秘密 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |
| 2 | Rule Driven Develpoment-AI時代的軟體開發策略 | 7.1 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 3 | 解構 Agentic AI 時代的系統架構：A2A、x402、AP2 | 7 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 4 | 讓 Agent Skills 介入你的軟體開發的工作流 | 6.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |

### ⭐ My Pick

當 Secret 不再是秘密

### Runner-up

Rule Driven Develpoment-AI時代的軟體開發策略

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-14 17:00-17:30

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 當架構設計被 AI 加速後，工程判斷力的養成與傳承該怎麼辦？ | 7.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 2 | AI Agent 時代：當人人都能快速上手，什麼才是真正的專業？ | 7 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 3 | 「開發效能提升實戰」：Claude Design 搭配自建 Skill，團隊達到提升四倍產出 | 6.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 4 | 可製造的 AI：讓 AI 成為工廠的第二大腦 | 6.1 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |

### ⭐ My Pick

當架構設計被 AI 加速後，工程判斷力的養成與傳承該怎麼辦？

### Runner-up

AI Agent 時代：當人人都能快速上手，什麼才是真正的專業？

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 10:00-10:10

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | Welcome opening | 4.3 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 |

### ⭐ My Pick

Welcome opening

### Runner-up

None

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 10:10-12:10

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | AI Coding 治理實戰：從開發到交付的Harness工程 | 8.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 2 | AI 時代下,軟體團隊要怎麼設計? | 7.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |
| 3 | Google AI Studio X Antigravity 驗收實戰 | 6.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |

### ⭐ My Pick

AI Coding 治理實戰：從開發到交付的Harness工程

### Runner-up

AI 時代下,軟體團隊要怎麼設計?

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 10:10-10:55

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 從一人 AI 工作流到團隊工程系統 | 6.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |

### ⭐ My Pick

從一人 AI 工作流到團隊工程系統

### Runner-up

None

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 11:15-12:00

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 當 AI 開始調查事故：讓 Kubernetes 告警從噪音變決策 | 7.3 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |
| 2 | MCP 時代的 AI Agent 資安攻防 | 6.5 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 3 | AI在企業的應用與挑戰之路 | 6.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 |
| 4 | 買完 AI 工具，然後呢？ | 6 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |

### ⭐ My Pick

當 AI 開始調查事故：讓 Kubernetes 告警從噪音變決策

### Runner-up

MCP 時代的 AI Agent 資安攻防

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 13:00-15:00

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | AI Coding 治理實戰：從開發到交付的Harness工程 | 8.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 2 | 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 | 7.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 3 | 打造跨模型 AI Agent 的 CI/CD 管線：從本地開發到雲端部署 | 7.3 | 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |

### ⭐ My Pick

AI Coding 治理實戰：從開發到交付的Harness工程

### Runner-up

讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 13:30-14:00

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | AI Agent Payments：x402 架構實戰 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 2 | 以敵為師的軟體防禦：導入AI紅隊思維與MITRE ATLAS的攻擊面拆解 | 6.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 |
| 3 | 初級工程師如何 AI 賦能的翻寫一個跟自己年紀差不多大的框架 | 6.6 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 4 | 使用過狩野分析與NPS嗎？讓我們一起務實的簡化它 | 6.1 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 |

### ⭐ My Pick

AI Agent Payments：x402 架構實戰

### Runner-up

以敵為師的軟體防禦：導入AI紅隊思維與MITRE ATLAS的攻擊面拆解

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 14:15-15:00

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 別讓 Agent 瞎掰：用 Semantic Layer 打造可信賴的企業 AI | 7.5 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 |
| 2 | AI O11y：數據決策到技術選型 | 7.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 3 | 當 AI 加入團隊：打造可審查、可驗證、會自我改善的 AI 開發工作流 | 6.8 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |
| 4 | AI 時代下測試的迷思——為什麼綠燈越多，品質卻沒有變好 | 6.1 | 以 Senior Engineer / Architect 的角度，聚焦決策、限制、驗證與可重現性。 |

### ⭐ My Pick

別讓 Agent 瞎掰：用 Semantic Layer 打造可信賴的企業 AI

### Runner-up

AI O11y：數據決策到技術選型

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 15:15-15:45

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 每個人都有 AI，為什麼團隊還是這麼慢？ | 7.7 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 2 | 透過 ACP 解放 Terminal：打造 Coding Agent 的協作模式 | 7.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 3 | 從一本旅遊書到 LINE OMO 服務：一個很殘酷的真實漏斗教會我的事 | 6.4 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 4 | 讓 AI Agent 記住你：從零打造仿生長期記憶系統的設計決策 | 6.1 | 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |

### ⭐ My Pick

每個人都有 AI，為什麼團隊還是這麼慢？

### Runner-up

透過 ACP 解放 Terminal：打造 Coding Agent 的協作模式

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 15:30-17:30

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | AI 驅動架構實戰：Structurizr × OpenCode | 8.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |
| 2 | 從瀑布式的崩潰到 AI 的拯救：用積木與 AI 助手重塑敏捷協作 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 3 | AI 時代下,軟體團隊要怎麼設計? | 7.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |

### ⭐ My Pick

AI 驅動架構實戰：Structurizr × OpenCode

### Runner-up

從瀑布式的崩潰到 AI 的拯救：用積木與 AI 助手重塑敏捷協作

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 16:00-16:45

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | AI Gateway：AI 治理的第一步 | 8.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 2 | 同一個 Prompt 為什麼差這麼多？——從踩坑到 Harness Engineering | 7.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 |
| 3 | 都用AI寫Code了，工程師若再往前一步：Product Builder | 7 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 4 | AI 把寫程式變便宜了，那開發者還剩下什麼？ | 6.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 |

### ⭐ My Pick

AI Gateway：AI 治理的第一步

### Runner-up

同一個 Prompt 為什麼差這麼多？——從踩坑到 Harness Engineering

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

### 2026-10-15 17:00-17:30

| Rank | Course | Score | Main Reason |
|---:|---|---:|---|
| 1 | 光靠 Prompt 守不住架構：用 Lint 與 Architecture Test 打造 Agentic Coding 防護牆 | 7.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 2 | 挖掘技能的全新可能性 | 7.3 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 3 | 從 Sprint 到 Prompt：用 AIDD 從 0 打造 LINE Bot | 6.8 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |
| 4 | 從痛點到產品：用資料與 AI 重新定義產品的規劃邏輯 | 6.4 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 |

### ⭐ My Pick

光靠 Prompt 守不住架構：用 Lint 與 Architecture Test 打造 Agentic Coding 防護牆

### Runner-up

挖掘技能的全新可能性

### Why

首選以整體 career fit、marginal value、技術深度與可帶回工程流程的程度勝出；Runner-up 保留為備選，若首選與個人當日目標不符再切換。

## Workshop Opportunity Cost

### 2026-10-14 10:10-12:10 — 為 Agentic AI 設計前端狀態機與即時回饋介面

- Gain: AI Agent 已從實驗走向產品，但前端工程師普遍缺乏一套系統性的方法來設計「AI 工作中」的介面。市面上的教學幾乎都停在「串 API 拿回文字」，當 Agent 開始會思考、呼叫工具、失敗、重試，前端的狀態複雜度就完全不同了。 這場 Workshop 填補從 demo 到產品之間的工程缺口，涵蓋四個核心技術模組： 1. Agent 執行狀態建模：用 TypeScript discriminated union 設計 AgentStep 型別系統，讓編譯器在 switch 裡自動窄化型別，徹底消除 runtime
- Lost Sessions: 以一些範例來討論AI Coding新時代的團隊開發 (10:10-10:55); 從點子到產品：AI 驅動的現代軟體開發全流程實踐 (10:10-12:10); AI 驅動架構實戰：Structurizr × OpenCode (10:10-12:10); AI 工具爆發時代的企業身分認證治理實戰 (11:15-12:00); 自己刻 Agent 框架：最難的不是呼叫 LLM (11:15-12:00); 當網站客群不再是人類：WebMCP 的前端新革命 (11:15-12:00); 產出的人不能驗自己：AI 時代的驗收設計 (11:15-12:00)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-14 10:10-12:10 — 從點子到產品：AI 驅動的現代軟體開發全流程實踐

- Gain: (本場內容與 10/14 Room 605+606 15:30–17:30 工作坊相同，可依個人時間安排擇一場次參加。) 在軟體開發領域，AI 工具正在徹底改變產品團隊的工作方式。本演講將帶領聽眾深入探討如何利用 AI 工具鏈，從產品規劃、UI/UX 設計、程式開發到測試部署，實現一個高效且協作的現代開發流程。 演講將涵蓋以下核心主題： 首先，我們將介紹 AI 在產品規劃階段的應用。透過 Perplexity 進行市場研究與競爭分析，使用 AI 工具將零散想法轉化為結構化的產品需求文件，幫助產品經理與工程團隊快速對
- Lost Sessions: 以一些範例來討論AI Coding新時代的團隊開發 (10:10-10:55); 為 Agentic AI 設計前端狀態機與即時回饋介面 (10:10-12:10); AI 驅動架構實戰：Structurizr × OpenCode (10:10-12:10); AI 工具爆發時代的企業身分認證治理實戰 (11:15-12:00); 自己刻 Agent 框架：最難的不是呼叫 LLM (11:15-12:00); 當網站客群不再是人類：WebMCP 的前端新革命 (11:15-12:00); 產出的人不能驗自己：AI 時代的驗收設計 (11:15-12:00)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-14 10:10-12:10 — AI 驅動架構實戰：Structurizr × OpenCode

- Gain: (本場內容與 10/15 Room 603+604 15:30–17:30 工作坊相同，可依個人時間安排擇一場次參加。) 架構師的核心職責從來不只是「畫圖」，而是驅動跨角色共識與決策落地，讓不同角色在同一份事實來源上協作。2026 年，生成式 AI 已深度介入開發流程，但這項使命依然是個不容易的任務。傳統圖形化介面繪製工具需要大量的人工介入和手動微調，諸如 Mermaid、PlantUML 這類「Diagrams as Code 1.0」工具雖使用程式碼產生圖形，本質仍是「用打字取代畫圖」，產出的依然是一張張獨立的
- Lost Sessions: 以一些範例來討論AI Coding新時代的團隊開發 (10:10-10:55); 為 Agentic AI 設計前端狀態機與即時回饋介面 (10:10-12:10); 從點子到產品：AI 驅動的現代軟體開發全流程實踐 (10:10-12:10); AI 工具爆發時代的企業身分認證治理實戰 (11:15-12:00); 自己刻 Agent 框架：最難的不是呼叫 LLM (11:15-12:00); 當網站客群不再是人類：WebMCP 的前端新革命 (11:15-12:00); 產出的人不能驗自己：AI 時代的驗收設計 (11:15-12:00)
- Verdict: 值得，前提是你要帶走其 stated artifact 並接受衝堂成本。

### 2026-10-14 13:00-15:00 — 讓 AI 讀懂你的系統 with knowledge graph

- Gain: 大家都在問「怎麼讓 AI 更懂我的 Codebase」，但問題往往不只是模型能力，而是系統裡存在大量沒被文件化的隱性知識，以及需求用語、程式命名與模組關係之間的落差。 這場 Workshop 會帶大家實際使用 Graphify 建立 Codebase 的 Index 與 Knowledge Graph，觀察 Coding Agent 如何透過 Graph 縮小 Context Retrieval 範圍、避免一開始就搜尋錯方向。 更重要的是，我們會把 Graph 不準當成診斷訊號：找出缺文件、命名不一致、關係缺失，以
- Lost Sessions: 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 (13:00-15:00); 通用 AI CLI vs. 場景專用 AI：以 Lovable Web 開發為例的效能實測 (13:00-15:00); AI Workflow：打造 PM 的第二大腦 (13:30-14:00); 用 AI 工作流重整事件驅動交易系統的一致性、效能與監測 (13:30-14:00); AI 時代下的另類多工與心流 ：碎片化工作中的「動態專注」法則 (13:30-14:00); LLM Wiki：企業內部知識問答系統的架構演進 (13:30-14:00); 讓工程師失業的 N + 1 道陰影 (14:15-15:00); 懂行規的 Agent：把規範變成技能，自動化開發到部署 (14:15-15:00); 從寫得快到交付可信的 AI Coding 工程戰場 (14:15-15:00); 讓IT主管睡不著的課題，台灣企業Agent規模化的聖杯考驗 (14:15-15:00)
- Verdict: 值得，前提是你要帶走其 stated artifact 並接受衝堂成本。

### 2026-10-14 13:00-15:00 — 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊

- Gain: (本場內容與 10/15 Room 605+606 13:00–15:00 工作坊相同，可依個人時間安排擇一場次參加。) 當 AI Agent、MCP Server、CLI 工具在公司內部數十倍增長，「帳密寫死進原始碼」與「Token 發出去就追不回來」會從個別小問題，升級成系統性的資安風險。MCP 授權規格其實已經給出方向——把 MCP Server 視為 OAuth 的 Resource Server——但真正卡住工程師的是中間幾層：Client 怎麼知道該去哪裡登入？Token 憑什麼只能存取「這一台」MCP
- Lost Sessions: 讓 AI 讀懂你的系統 with knowledge graph (13:00-15:00); 通用 AI CLI vs. 場景專用 AI：以 Lovable Web 開發為例的效能實測 (13:00-15:00); AI Workflow：打造 PM 的第二大腦 (13:30-14:00); 用 AI 工作流重整事件驅動交易系統的一致性、效能與監測 (13:30-14:00); AI 時代下的另類多工與心流 ：碎片化工作中的「動態專注」法則 (13:30-14:00); LLM Wiki：企業內部知識問答系統的架構演進 (13:30-14:00); 讓工程師失業的 N + 1 道陰影 (14:15-15:00); 懂行規的 Agent：把規範變成技能，自動化開發到部署 (14:15-15:00); 從寫得快到交付可信的 AI Coding 工程戰場 (14:15-15:00); 讓IT主管睡不著的課題，台灣企業Agent規模化的聖杯考驗 (14:15-15:00)
- Verdict: 值得，前提是你要帶走其 stated artifact 並接受衝堂成本。

### 2026-10-14 13:00-15:00 — 通用 AI CLI vs. 場景專用 AI：以 Lovable Web 開發為例的效能實測

- Gain: 隨著生成式 AI 能力快速發展，開發者的痛點已從「如何寫出程式碼」，轉變為「如何管理專案複雜度、控制開發成本，並選擇正確的工具」。當模型能力逐漸成熟，開發者的核心價值也將更聚焦於「定義需求」、「設計架構」與「精準選型」。 本場議程將公開我在 2026 年 iThome 鐵人賽中的精華研究，探討在全新的 Vibe Coding 時代下，如何選擇合適的 AI 開發工具，並建立高速的 PDCA 迭代流程。議程將以使用 Lovable 建置 Web 應用為主要實驗場景，聚焦以下兩大核心： 通用工具與場景專用工具的界線 評測
- Lost Sessions: 讓 AI 讀懂你的系統 with knowledge graph (13:00-15:00); 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 (13:00-15:00); AI Workflow：打造 PM 的第二大腦 (13:30-14:00); 用 AI 工作流重整事件驅動交易系統的一致性、效能與監測 (13:30-14:00); AI 時代下的另類多工與心流 ：碎片化工作中的「動態專注」法則 (13:30-14:00); LLM Wiki：企業內部知識問答系統的架構演進 (13:30-14:00); 讓工程師失業的 N + 1 道陰影 (14:15-15:00); 懂行規的 Agent：把規範變成技能，自動化開發到部署 (14:15-15:00); 從寫得快到交付可信的 AI Coding 工程戰場 (14:15-15:00); 讓IT主管睡不著的課題，台灣企業Agent規模化的聖杯考驗 (14:15-15:00)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-14 15:30-17:30 — 在解決跟AI的溝通之前先解決人和人之間的溝通

- Gain: AI 可以協助我們整理資訊、產生內容、加快工作，但設定目標、做出判斷與推動合作的，依然是人。 當人與人之間無法理解彼此，再好的工具也很難解決團隊裡的誤會與摩擦。 你是否遇過這些情況：明明已經說得很清楚，對方理解的卻是另一回事； 會議開了很久，大家反而更不確定下一步；每個人都在表達，彼此卻沒有真正連結。 溝通不只是把話說出去，更重要的是確認彼此如何理解資訊，並在差異中逐步形成共識。 這場工作坊不以理論講授為主，而是透過兩個精心設計的遊戲化體驗，帶領參與者親自觀察： • 為什麼同一段資訊，經過不同的人之後會產生不同的理
- Lost Sessions: 雲端把花錢的權力交給了工程師，然後呢？ (15:15-15:45); 穩才是快 ～ 以 OKF 打造 Agentic AIOps 治理閉環 (15:15-15:45); AI 導入之後：傳統開發團隊的角色鬆動與開發新節奏 (15:15-15:45); 從 Hello World 看懂 AI 開發工具的計費結構——如何省得到錢 (15:15-15:45); 把「做完了」寫下來：90 分鐘做出一份機器能檢查的驗收清單 (15:30-17:30); 從點子到產品：AI 驅動的現代軟體開發全流程實踐 (15:30-17:30); 讓 Agent Skills 介入你的軟體開發的工作流 (16:00-16:45); 當 Secret 不再是秘密 (16:00-16:45); Rule Driven Develpoment-AI時代的軟體開發策略 (16:00-16:45); 解構 Agentic AI 時代的系統架構：A2A、x402、AP2 (16:00-16:45); 當架構設計被 AI 加速後，工程判斷力的養成與傳承該怎麼辦？ (17:00-17:30); 可製造的 AI：讓 AI 成為工廠的第二大腦 (17:00-17:30); 「開發效能提升實戰」：Claude Design 搭配自建 Skill，團隊達到提升四倍產出 (17:00-17:30); AI Agent 時代：當人人都能快速上手，什麼才是真正的專業？ (17:00-17:30)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-14 15:30-17:30 — 把「做完了」寫下來：90 分鐘做出一份機器能檢查的驗收清單

- Gain: 這是一場 SDD（Spec-Driven Development）＋ Harness 的實作工作坊。90 分鐘，你會用 AI coding agent（不限品牌，Claude Code、Codex CLI 等皆可）跑一輪完整的開發流程：寫 spec、讓 agent 實作、驗收、修正。 流程： 1. 我先示範一次完整的 SDD + Harness 循環，從 spec 到 agent 產出到驗收。 2. 你自己動手跑一輪：寫 spec、讓 AI agent 實作，agent 回報「做完了」。 3. 針對這次產出寫 2–
- Lost Sessions: 雲端把花錢的權力交給了工程師，然後呢？ (15:15-15:45); 穩才是快 ～ 以 OKF 打造 Agentic AIOps 治理閉環 (15:15-15:45); AI 導入之後：傳統開發團隊的角色鬆動與開發新節奏 (15:15-15:45); 從 Hello World 看懂 AI 開發工具的計費結構——如何省得到錢 (15:15-15:45); 在解決跟AI的溝通之前先解決人和人之間的溝通 (15:30-17:30); 從點子到產品：AI 驅動的現代軟體開發全流程實踐 (15:30-17:30); 讓 Agent Skills 介入你的軟體開發的工作流 (16:00-16:45); 當 Secret 不再是秘密 (16:00-16:45); Rule Driven Develpoment-AI時代的軟體開發策略 (16:00-16:45); 解構 Agentic AI 時代的系統架構：A2A、x402、AP2 (16:00-16:45); 當架構設計被 AI 加速後，工程判斷力的養成與傳承該怎麼辦？ (17:00-17:30); 可製造的 AI：讓 AI 成為工廠的第二大腦 (17:00-17:30); 「開發效能提升實戰」：Claude Design 搭配自建 Skill，團隊達到提升四倍產出 (17:00-17:30); AI Agent 時代：當人人都能快速上手，什麼才是真正的專業？ (17:00-17:30)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-14 15:30-17:30 — 從點子到產品：AI 驅動的現代軟體開發全流程實踐

- Gain: (本場內容與 10/14 Room 605+606 10:10–12:10 工作坊相同，可依個人時間安排擇一場次參加。) 在軟體開發領域，AI 工具正在徹底改變產品團隊的工作方式。本演講將帶領聽眾深入探討如何利用 AI 工具鏈，從產品規劃、UI/UX 設計、程式開發到測試部署，實現一個高效且協作的現代開發流程。 演講將涵蓋以下核心主題： 首先，我們將介紹 AI 在產品規劃階段的應用。透過 Perplexity 進行市場研究與競爭分析，使用 AI 工具將零散想法轉化為結構化的產品需求文件，幫助產品經理與工程團隊快速對
- Lost Sessions: 雲端把花錢的權力交給了工程師，然後呢？ (15:15-15:45); 穩才是快 ～ 以 OKF 打造 Agentic AIOps 治理閉環 (15:15-15:45); AI 導入之後：傳統開發團隊的角色鬆動與開發新節奏 (15:15-15:45); 從 Hello World 看懂 AI 開發工具的計費結構——如何省得到錢 (15:15-15:45); 在解決跟AI的溝通之前先解決人和人之間的溝通 (15:30-17:30); 把「做完了」寫下來：90 分鐘做出一份機器能檢查的驗收清單 (15:30-17:30); 讓 Agent Skills 介入你的軟體開發的工作流 (16:00-16:45); 當 Secret 不再是秘密 (16:00-16:45); Rule Driven Develpoment-AI時代的軟體開發策略 (16:00-16:45); 解構 Agentic AI 時代的系統架構：A2A、x402、AP2 (16:00-16:45); 當架構設計被 AI 加速後，工程判斷力的養成與傳承該怎麼辦？ (17:00-17:30); 可製造的 AI：讓 AI 成為工廠的第二大腦 (17:00-17:30); 「開發效能提升實戰」：Claude Design 搭配自建 Skill，團隊達到提升四倍產出 (17:00-17:30); AI Agent 時代：當人人都能快速上手，什麼才是真正的專業？ (17:00-17:30)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-15 10:10-12:10 — AI 時代下,軟體團隊要怎麼設計?

- Gain: (本場內容與 10/15 Room 605+606 15:30–17:30 工作坊相同，可依個人時間安排擇一場次參加。) AI 讓生成程式碼、生成內容的速度大幅提升,但「判斷產出對不對」這件事並沒有跟著變快——這個落差,正是許多團隊在導入 AI coding 之後感受到的驗證瓶頸與 oracle problem:當驗收標準本身也模糊不清,「誰該負責看見全局、誰該判斷對錯」就變成組織設計的問題,而不只是技術問題。 這場工作坊用一個動手模擬遊戲讓與會者親身體驗這個落差。全員分組,用 AI 生圖工具合力復刻《清明上河圖》
- Lost Sessions: Google AI Studio X Antigravity 驗收實戰 (10:10-12:10); 從一人 AI 工作流到團隊工程系統 (10:10-10:55); AI Coding 治理實戰：從開發到交付的Harness工程 (10:10-12:10); MCP 時代的 AI Agent 資安攻防 (11:15-12:00); 當 AI 開始調查事故：讓 Kubernetes 告警從噪音變決策 (11:15-12:00); 買完 AI 工具，然後呢？ (11:15-12:00); AI在企業的應用與挑戰之路 (11:15-12:00)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-15 10:10-12:10 — Google AI Studio X Antigravity 驗收實戰

- Gain: 「Vibe Coding」講了一兩年，大家都會了：你用自然語言請 AI 幫你寫，它很快給你一個能跑的東西。Agent-first 又更進一步：你給高階目標，Agent 自己規劃、實作、測試、驗證，最後跟你說「做完了」。 問題就在這句「做完了」。 我開一間軟體公司，在彰化與全台灣替在地團隊、企業和政府機關做了很多案子。這一年我把公司的出貨流程整個押在 AI 協作上，人只在關鍵節點把關（所謂的 Human in the loop）——Agent 出包，是我賠錢、責任我扛。押下去之後我最深的體會是：Agent 時代最稀缺
- Lost Sessions: AI 時代下,軟體團隊要怎麼設計? (10:10-12:10); 從一人 AI 工作流到團隊工程系統 (10:10-10:55); AI Coding 治理實戰：從開發到交付的Harness工程 (10:10-12:10); MCP 時代的 AI Agent 資安攻防 (11:15-12:00); 當 AI 開始調查事故：讓 Kubernetes 告警從噪音變決策 (11:15-12:00); 買完 AI 工具，然後呢？ (11:15-12:00); AI在企業的應用與挑戰之路 (11:15-12:00)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-15 10:10-12:10 — AI Coding 治理實戰：從開發到交付的Harness工程

- Gain: (本場內容與 10/15 Room 607+608 13:00–15:00 工作坊相同，可依個人時間安排擇一場次參加。) AI Coding Agent 可以快速完成程式開發，但在實際專案中，團隊仍需要確認實作是否符合需求與架構規範、Code Review 是否確實完成，以及常見安全問題能否在建立 Pull Request 前被發現。 本工作坊將帶領參加者建立一套可實際運作的 AI Coding 本機治理流程。透過SDD 定義功能需求，使用 Skills 封裝開發規範，並建立 Developer、Code Revi
- Lost Sessions: AI 時代下,軟體團隊要怎麼設計? (10:10-12:10); Google AI Studio X Antigravity 驗收實戰 (10:10-12:10); 從一人 AI 工作流到團隊工程系統 (10:10-10:55); MCP 時代的 AI Agent 資安攻防 (11:15-12:00); 當 AI 開始調查事故：讓 Kubernetes 告警從噪音變決策 (11:15-12:00); 買完 AI 工具，然後呢？ (11:15-12:00); AI在企業的應用與挑戰之路 (11:15-12:00)
- Verdict: 值得，前提是你要帶走其 stated artifact 並接受衝堂成本。

### 2026-10-15 13:00-15:00 — 打造跨模型 AI Agent 的 CI/CD 管線：從本地開發到雲端部署

- Gain: AI Agent 在筆電上跑得好好的，搬上雲端卻常常直接設定跑掉，API Key 又怕外流，而且往往當掉卻沒有任何錯誤訊息。這場 workshop 會帶大家五分鐘架好一套跨模型的 AI Native 工作流程，現場示範快速更換 (甚至不用手動更換) provider 而不需改程式邏輯，並用真實案例示範如何用數字而非直覺決定要不要優化，最後講怎麼把這套東西安全部署上雲端。 #Gemini #GoogleDeveloperGroups #GDE #MVP #AIGateway #MultiModel #CICD #Ag
- Lost Sessions: AI Coding 治理實戰：從開發到交付的Harness工程 (13:00-15:00); 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 (13:00-15:00); 以敵為師的軟體防禦：導入AI紅隊思維與MITRE ATLAS的攻擊面拆解 (13:30-14:00); AI Agent Payments：x402 架構實戰 (13:30-14:00); 使用過狩野分析與NPS嗎？讓我們一起務實的簡化它 (13:30-14:00); 初級工程師如何 AI 賦能的翻寫一個跟自己年紀差不多大的框架 (13:30-14:00); AI O11y：數據決策到技術選型 (14:15-15:00); 別讓 Agent 瞎掰：用 Semantic Layer 打造可信賴的企業 AI (14:15-15:00); AI 時代下測試的迷思——為什麼綠燈越多，品質卻沒有變好 (14:15-15:00); 當 AI 加入團隊：打造可審查、可驗證、會自我改善的 AI 開發工作流 (14:15-15:00)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-15 13:00-15:00 — AI Coding 治理實戰：從開發到交付的Harness工程

- Gain: (本場內容與 10/15 Room 603+604 10:10–12:10 工作坊相同，可依個人時間安排擇一場次參加。) AI Coding Agent 可以快速完成程式開發，但在實際專案中，團隊仍需要確認實作是否符合需求與架構規範、Code Review 是否確實完成，以及常見安全問題能否在建立 Pull Request 前被發現。 本工作坊將帶領參加者建立一套可實際運作的 AI Coding 本機治理流程。透過SDD 定義功能需求，使用 Skills 封裝開發規範，並建立 Developer、Code Revi
- Lost Sessions: 打造跨模型 AI Agent 的 CI/CD 管線：從本地開發到雲端部署 (13:00-15:00); 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 (13:00-15:00); 以敵為師的軟體防禦：導入AI紅隊思維與MITRE ATLAS的攻擊面拆解 (13:30-14:00); AI Agent Payments：x402 架構實戰 (13:30-14:00); 使用過狩野分析與NPS嗎？讓我們一起務實的簡化它 (13:30-14:00); 初級工程師如何 AI 賦能的翻寫一個跟自己年紀差不多大的框架 (13:30-14:00); AI O11y：數據決策到技術選型 (14:15-15:00); 別讓 Agent 瞎掰：用 Semantic Layer 打造可信賴的企業 AI (14:15-15:00); AI 時代下測試的迷思——為什麼綠燈越多，品質卻沒有變好 (14:15-15:00); 當 AI 加入團隊：打造可審查、可驗證、會自我改善的 AI 開發工作流 (14:15-15:00)
- Verdict: 值得，前提是你要帶走其 stated artifact 並接受衝堂成本。

### 2026-10-15 13:00-15:00 — 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊

- Gain: (本場內容與 10/14 Room 605+606 13:00–15:00 工作坊相同，可依個人時間安排擇一場次參加。) 當 AI Agent、MCP Server、CLI 工具在公司內部數十倍增長，「帳密寫死進原始碼」與「Token 發出去就追不回來」會從個別小問題，升級成系統性的資安風險。MCP 授權規格其實已經給出方向——把 MCP Server 視為 OAuth 的 Resource Server——但真正卡住工程師的是中間幾層：Client 怎麼知道該去哪裡登入？Token 憑什麼只能存取「這一台」MCP
- Lost Sessions: 打造跨模型 AI Agent 的 CI/CD 管線：從本地開發到雲端部署 (13:00-15:00); AI Coding 治理實戰：從開發到交付的Harness工程 (13:00-15:00); 以敵為師的軟體防禦：導入AI紅隊思維與MITRE ATLAS的攻擊面拆解 (13:30-14:00); AI Agent Payments：x402 架構實戰 (13:30-14:00); 使用過狩野分析與NPS嗎？讓我們一起務實的簡化它 (13:30-14:00); 初級工程師如何 AI 賦能的翻寫一個跟自己年紀差不多大的框架 (13:30-14:00); AI O11y：數據決策到技術選型 (14:15-15:00); 別讓 Agent 瞎掰：用 Semantic Layer 打造可信賴的企業 AI (14:15-15:00); AI 時代下測試的迷思——為什麼綠燈越多，品質卻沒有變好 (14:15-15:00); 當 AI 加入團隊：打造可審查、可驗證、會自我改善的 AI 開發工作流 (14:15-15:00)
- Verdict: 值得，前提是你要帶走其 stated artifact 並接受衝堂成本。

### 2026-10-15 15:30-17:30 — 從瀑布式的崩潰到 AI 的拯救：用積木與 AI 助手重塑敏捷協作

- Gain: 在變動劇烈的生成式 AI 時代，您的團隊是否依然陷在「前期花費大量時間繪製完美藍圖，一旦市場需求變更，原本計畫瞬間失去效用」的瀑布式泥淖中？抑或是導入了 Scrum，卻覺得各種儀式流於形式，無法發揮實質價值？ 這是一場融合「樂高積木實體協作」與「生成式 AI（GenAI）數位賦能」的沉浸式體驗工作坊！本活動將帶領學員經歷一場真實的開發轉型之旅。我們將引入 Scrum 框架，並首次將 AI Agents 深度融入敏捷開發的各個環節。您將學習如何與 AI 進行需求溝通與故事卡撰寫、或是讓 AI 協助魔術估算與任務拆解，
- Lost Sessions: 透過 ACP 解放 Terminal：打造 Coding Agent 的協作模式 (15:15-15:45); 讓 AI Agent 記住你：從零打造仿生長期記憶系統的設計決策 (15:15-15:45); 從一本旅遊書到 LINE OMO 服務：一個很殘酷的真實漏斗教會我的事 (15:15-15:45); 每個人都有 AI，為什麼團隊還是這麼慢？ (15:15-15:45); AI 時代下,軟體團隊要怎麼設計? (15:30-17:30); AI 驅動架構實戰：Structurizr × OpenCode (15:30-17:30); 同一個 Prompt 為什麼差這麼多？——從踩坑到 Harness Engineering (16:00-16:45); AI Gateway：AI 治理的第一步 (16:00-16:45); AI 把寫程式變便宜了，那開發者還剩下什麼？ (16:00-16:45); 都用AI寫Code了，工程師若再往前一步：Product Builder (16:00-16:45); 從痛點到產品：用資料與 AI 重新定義產品的規劃邏輯 (17:00-17:30); 光靠 Prompt 守不住架構：用 Lint 與 Architecture Test 打造 Agentic Coding 防護牆 (17:00-17:30); 挖掘技能的全新可能性 (17:00-17:30); 從 Sprint 到 Prompt：用 AIDD 從 0 打造 LINE Bot (17:00-17:30)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-15 15:30-17:30 — AI 時代下,軟體團隊要怎麼設計?

- Gain: (本場內容與 10/15 Room 605+606 10:10–12:10 工作坊相同，可依個人時間安排擇一場次參加。) AI 讓生成程式碼、生成內容的速度大幅提升,但「判斷產出對不對」這件事並沒有跟著變快——這個落差,正是許多團隊在導入 AI coding 之後感受到的驗證瓶頸與 oracle problem:當驗收標準本身也模糊不清,「誰該負責看見全局、誰該判斷對錯」就變成組織設計的問題,而不只是技術問題。 這場工作坊用一個動手模擬遊戲讓與會者親身體驗這個落差。全員分組,用 AI 生圖工具合力復刻《清明上河圖》
- Lost Sessions: 透過 ACP 解放 Terminal：打造 Coding Agent 的協作模式 (15:15-15:45); 讓 AI Agent 記住你：從零打造仿生長期記憶系統的設計決策 (15:15-15:45); 從一本旅遊書到 LINE OMO 服務：一個很殘酷的真實漏斗教會我的事 (15:15-15:45); 每個人都有 AI，為什麼團隊還是這麼慢？ (15:15-15:45); 從瀑布式的崩潰到 AI 的拯救：用積木與 AI 助手重塑敏捷協作 (15:30-17:30); AI 驅動架構實戰：Structurizr × OpenCode (15:30-17:30); 同一個 Prompt 為什麼差這麼多？——從踩坑到 Harness Engineering (16:00-16:45); AI Gateway：AI 治理的第一步 (16:00-16:45); AI 把寫程式變便宜了，那開發者還剩下什麼？ (16:00-16:45); 都用AI寫Code了，工程師若再往前一步：Product Builder (16:00-16:45); 從痛點到產品：用資料與 AI 重新定義產品的規劃邏輯 (17:00-17:30); 光靠 Prompt 守不住架構：用 Lint 與 Architecture Test 打造 Agentic Coding 防護牆 (17:00-17:30); 挖掘技能的全新可能性 (17:00-17:30); 從 Sprint 到 Prompt：用 AIDD 從 0 打造 LINE Bot (17:00-17:30)
- Verdict: 不優先，除非其 hands-on 內容正好是當日目標。

### 2026-10-15 15:30-17:30 — AI 驅動架構實戰：Structurizr × OpenCode

- Gain: (本場內容與 10/14 Room 607+608 10:10–12:10 工作坊相同，可依個人時間安排擇一場次參加。) 架構師的核心職責從來不只是「畫圖」，而是驅動跨角色共識與決策落地，讓不同角色在同一份事實來源上協作。2026 年，生成式 AI 已深度介入開發流程，但這項使命依然是個不容易的任務。傳統圖形化介面繪製工具需要大量的人工介入和手動微調，諸如 Mermaid、PlantUML 這類「Diagrams as Code 1.0」工具雖使用程式碼產生圖形，本質仍是「用打字取代畫圖」，產出的依然是一張張獨立的
- Lost Sessions: 透過 ACP 解放 Terminal：打造 Coding Agent 的協作模式 (15:15-15:45); 讓 AI Agent 記住你：從零打造仿生長期記憶系統的設計決策 (15:15-15:45); 從一本旅遊書到 LINE OMO 服務：一個很殘酷的真實漏斗教會我的事 (15:15-15:45); 每個人都有 AI，為什麼團隊還是這麼慢？ (15:15-15:45); 從瀑布式的崩潰到 AI 的拯救：用積木與 AI 助手重塑敏捷協作 (15:30-17:30); AI 時代下,軟體團隊要怎麼設計? (15:30-17:30); 同一個 Prompt 為什麼差這麼多？——從踩坑到 Harness Engineering (16:00-16:45); AI Gateway：AI 治理的第一步 (16:00-16:45); AI 把寫程式變便宜了，那開發者還剩下什麼？ (16:00-16:45); 都用AI寫Code了，工程師若再往前一步：Product Builder (16:00-16:45); 從痛點到產品：用資料與 AI 重新定義產品的規劃邏輯 (17:00-17:30); 光靠 Prompt 守不住架構：用 Lint 與 Architecture Test 打造 Agentic Coding 防護牆 (17:00-17:30); 挖掘技能的全新可能性 (17:00-17:30); 從 Sprint 到 Prompt：用 AIDD 從 0 打造 LINE Bot (17:00-17:30)
- Verdict: 值得，前提是你要帶走其 stated artifact 並接受衝堂成本。

## Career Gap Analysis

### 我已經很強的領域

- Full-stack / backend production engineering
- CI/CD、Docker、VPS、GHCR 與 runtime deployment
- Queue、worker、scheduler、projection、snapshot、retry、idempotency 與 eventual consistency
- Geo RAG ingestion、Qdrant、Kernel Memory、retrieval 與 knowledge-base pipeline
- CV/OCR benchmark、error analysis、A/B、offline deployment 與 evidence mindset
- AI-assisted coding、repository rules、skills、architecture exploration 與 review

### 我現在最值得補的領域

- Harness Engineering
- Architecture Enforcement
- AI Verification / machine-verifiable acceptance
- Agent / MCP Security
- Agent Governance
- Team AI Engineering
- Observability / AIOps decision loops
- Context / Memory / Semantic Layer for FlowDock

The agenda contains direct evidence for these gaps in the detail pages; ordinary prompt, basic RAG, basic CI/CD and simple prototype sessions receive lower marginal-value scores.

## Conference Learning Strategy

### Questions I should carry into the conference

- 他們如何限制 Agent 的 context、tools、權限與環境？
- Verification 在哪一層？誰是 independent verifier？
- Acceptance 是否 machine-verifiable，證據如何保存？
- Rule / Skill / Architecture boundary 如何 enforce，而不是只寫在 prompt？
- Failure、retry、hallucination、drift 與 regression 如何被觀察？
- Token、secret、identity、MCP tool authorization 如何治理？
- 個人 AI workflow 如何變成 team workflow，如何 reproducible？
- 哪些 human judgment 保留在人，哪些決策交給 Agent？
- Workshop 最後帶走的 artifact 能否直接進入我的 repo？

## Top Career Sessions

### Top 15

| Rank | Session | Speaker | Score | Career Value | What I Should Learn |
|---:|---|---|---:|---|---|
| 1 | 讓 AI 讀懂你的系統 with knowledge graph | Neo Hsu | 8.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 | knowledge graph, context, architecture, workflow, eval, agent, skill, 治理 的限制、失敗模式、證據與可移植做法 |
| 2 | AI 驅動架構實戰：Structurizr × OpenCode | 郭孟坤 (Mansun Kuo) | 8.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | mcp, agent, 架構 的限制、失敗模式、證據與可移植做法 |
| 3 | AI 驅動架構實戰：Structurizr × OpenCode | 郭孟坤 (Mansun Kuo) | 8.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可把既有 CI/CD 提升為 secure deployment、verification 與 release guardrail。 | mcp, agent, 架構 的限制、失敗模式、證據與可移植做法 |
| 4 | AI Gateway：AI 治理的第一步 | 張哲嘉 (Che Chia Chang) | 8.2 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | observability, architecture, workflow, eval, 治理, 架構 的限制、失敗模式、證據與可移植做法 |
| 5 | AI Coding 治理實戰：從開發到交付的Harness工程 | 陳葵懋 (Ian Chen) | 8.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | harness, mcp, security, agent, skill, 治理, 架構, 安全 的限制、失敗模式、證據與可移植做法 |
| 6 | AI Coding 治理實戰：從開發到交付的Harness工程 | 陳葵懋 (Ian Chen) | 8.1 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | harness, mcp, security, agent, skill, 治理, 架構, 安全 的限制、失敗模式、證據與可移植做法 |
| 7 | 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 | 吳柏毅 (appleboy) | 7.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | mcp, authorization, secret, agent, 治理, 架構, 安全, 認證 的限制、失敗模式、證據與可移植做法 |
| 8 | 雲端把花錢的權力交給了工程師，然後呢？ | 林宗穎 (Kater) | 7.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 | security, governance, architecture, workflow, agent, 治理 的限制、失敗模式、證據與可移植做法 |
| 9 | 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊 | 吳柏毅 (appleboy) | 7.9 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | mcp, authorization, secret, agent, 治理, 架構, 安全, 認證 的限制、失敗模式、證據與可移植做法 |
| 10 | 從寫得快到交付可信的 AI Coding 工程戰場 | 陳葵懋 (Ian Chen) | 7.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | harness, mcp, agent, skill, 治理, 架構, 安全, 認證 的限制、失敗模式、證據與可移植做法 |
| 11 | 當架構設計被 AI 加速後，工程判斷力的養成與傳承該怎麼辦？ | 林承毅 (Jed) | 7.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | context, agent, 治理, 架構 的限制、失敗模式、證據與可移植做法 |
| 12 | 每個人都有 AI，為什麼團隊還是這麼慢？ | 薛良斌 (hlb/布丁) | 7.7 | 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | context, agent, 產品 的限制、失敗模式、證據與可移植做法 |
| 13 | 同一個 Prompt 為什麼差這麼多？——從踩坑到 Harness Engineering | 許舜雯 (Olivia Shiu) | 7.7 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 | harness, verification, context, agent, 架構 的限制、失敗模式、證據與可移植做法 |
| 14 | 別讓 Agent 瞎掰：用 Semantic Layer 打造可信賴的企業 AI | 林士凱 (Danny) | 7.5 | 可補強 Agent security、tool authorization、identity 與 host investigation。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 可對照 Geo RAG，重點放在 evolution、evaluation、governance 而非基礎實作。 | knowledge graph, semantic layer, agent, 架構, 認證 的限制、失敗模式、證據與可移植做法 |
| 15 | 透過 ACP 解放 Terminal：打造 Coding Agent 的協作模式 | Neo Hsu | 7.4 | 直接對應 Ponytail、Agent workflow、rules/skills 與可驗證交付。 可連結 Voice AI、LetsBall 的分散式系統與 architecture judgment。 可直接映射 FlowDock 的 Context、Resume State、Agent UI 與產品設計。 | context, agent, 治理, 架構, 產品 的限制、失敗模式、證據與可移植做法 |

## Consistency Check

- Total evaluated: 70
- Session + Lab: 70
- 10/14: 35
- 10/15: 35
- Strong Recommend (overall >= 8.0): 6
- Recommend (7.0–7.9): 32
- Normal (5.5–6.9): 29
- Low Priority (< 5.5): 3
- Conflict Groups: 22
- Workshop decisions: 18
- Missing rows: 0
- Every row has recommendation, overall, Why For Me, and Already Know / Overlap: yes
- Every multi-entry conflict group has a pick: yes
