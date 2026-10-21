# HWDC 2026 — V2 Slide Outline

> 連續新編號。每個課程單元可獨立閱讀；個人心得只回指 `MY-TAKEAWAYS.md`，課程介紹回指 README／notes。

## Part 1 — 研討會總覽

### S001
- **Part／Course：** 全部課程／封面
- **Title：** Hello World Dev Conference 2026
- **這頁要講什麼：** 技術研討會分享的活動名稱與日期。
- **正式畫面文字草案：** `Hello World Dev Conference 2026`；`技術研討會分享`；`10/14–10/15`
- **來源：** `SUMMARY.md:1-15`
- **圖片：** 無。
- **Layout：** Dark Editorial Cover。
- **我可以怎麼講：** 我會先交代兩天聽了什麼，再逐場說自己真的記住什麼。最後才整理可能帶回公司的方向。
- **技術限制：** 不宣稱完整參與全部課程。
- **可否獨立閱讀：** 是。

### S002
- **Part／Course：** 研討會總覽／10/14
- **Title：** 10/14 課程總表
- **這頁要講什麼：** 10/14 課程、時間、講師與工具／技術。
- **正式畫面文字草案：** `10:10 Structurizr`；`13:30 LLM Wiki／Event-driven Trading（時間重疊，依筆記整理）`；`14:15 Compliance`；`15:15 FinOps`；`16:00 A2A／x402／AP2`；`17:00 Architecture Judgment`。
- **來源：** `SUMMARY.md:93-339`、各課程 README。
- **圖片：** 無；日期時間軸。
- **Layout：** Light 兩列時間軸。
- **我可以怎麼講：** 第一天主題從架構表達一路到 Agent 付款。13:30 兩堂重疊，所以後面會標清楚哪些是依筆記整理。
- **技術限制：** 不把兩場 13:30 課程標成完整參與。
- **可否獨立閱讀：** 是。

### S003
- **Part／Course：** 研討會總覽／10/15
- **Title：** 10/15 課程總表
- **這頁要講什麼：** 10/15 課程、時間、講師與工具／技術。
- **正式畫面文字草案：** `10:10 Team Workflow`；`11:15 Incident Investigation`；`13:00 MCP OAuth`；`15:15 ACP（無我的重點）`；`16:00 Harness`；`17:00 Lint（無我的重點）`。
- **來源：** `SUMMARY.md:339-560`、各課程 README。
- **圖片：** 無；日期時間軸。
- **Layout：** Dark timeline，標出有／無個人心得。
- **我可以怎麼講：** 第二天比較集中在怎麼讓 AI 進入工程流程。ACP 和 Lint 我會回顧課程內容，但不假裝那是自己記住的心得。
- **技術限制：** ACP 沒有 `#### 我的重點`；Lint 沒有個人心得。
- **可否獨立閱讀：** 是。

## Part 2 — 10/14 課程回顧

### S004
- **Part／Course：** 課程回顧／Structurizr × OpenCode
- **Title：** AI 驅動架構實戰：Structurizr × OpenCode
- **這頁要講什麼：** 由需求與系統邊界開始，建立、呈現與驗證 C4 架構模型。
- **正式畫面文字草案：** `需求／邊界 → C4 模型 → OpenCode + Structurizr DSL → 架構視角 → validate／inspect／ADR`
- **來源：** `SUMMARY.md:95-122`、`hello-world-notes/session/2026-10-14/1010-structurizr-opencode/{README.md,notes.md}`。
- **圖片：** `.../1010-structurizr-opencode/assets/image.png`，同 S005。
- **Layout：** 左文右圖。
- **我可以怎麼講：** 我記住的不是全部 DSL，而是架構可以從最外層一路往內看。這可能比一大段文字清楚，但我自己還沒完整試驗過。
- **技術限制：** 保留「還沒試驗過」；不寫成已驗證方法。
- **可否獨立閱讀：** 是。

### S005
- **Part／Course：** 課程回顧／Structurizr × OpenCode
- **Title：** AI 驅動架構實戰：Structurizr × OpenCode
- **這頁要講什麼：** 完整展示 Structurizr Workshop 產出的架構模型圖片。
- **正式畫面文字草案：** `Structurizr Workshop 架構模型`
- **來源：** `SUMMARY.md:106-110`、Structurizr `notes.md`、DSL／workspace JSON。
- **圖片：** `hello-world-notes/session/2026-10-14/1010-structurizr-opencode/assets/image.png`。
- **Layout：** Full Image；原始比例完整展示，僅保留課程名稱與基本資訊。
- **我可以怎麼講：** 這張是課堂實際產出的圖，不是我重新畫的示意圖。我會先讓大家看它能不能幫助理解流程。
- **技術限制：** 架構模型不等於 Production Runtime；原圖需裁切，細字可能不可讀。
- **可否獨立閱讀：** 是。

### S006
- **Part／Course：** 課程回顧／LLM Wiki
- **Title：** LLM Wiki：企業內部知識問答系統的架構演進
- **這頁要講什麼：** 說明 Raw、Wiki、Ops 三層與知識更新流程。
- **正式畫面文字草案：** `Raw 原始證據 → Wiki 結構化知識 → Ops 更新、審查與發布`；`Compile → Validate → Review → Publish`
- **來源：** `SUMMARY.md:126-156`、LLM Wiki `README.md`、`notes.md`。
- **圖片：** `.../1330-llm-wiki/assets/workshop-photo-5.jpg`，同 S007。
- **Layout：** 左側三層流程圖，右側更新流程。
- **我可以怎麼講：** 這場我只聽一點，不能講得像完全掌握。留下的印象是 RAG 前面還有原始文件和整理後文件的分層。
- **技術限制：** 不把模糊的「外部治理」寫成確定結論。
- **可否獨立閱讀：** 是。

### S007
- **Part／Course：** 課程回顧／LLM Wiki
- **Title：** LLM Wiki：企業內部知識問答系統的架構演進
- **這頁要講什麼：** 完整展示 Raw、Wiki、Ops 三層課堂投影片。
- **正式畫面文字草案：** `Raw / Wiki / Ops`
- **來源：** `SUMMARY.md:137-145`、LLM Wiki `notes.md`。
- **圖片：** `hello-world-notes/session/2026-10-14/1330-llm-wiki/assets/workshop-photo-5.jpg`。
- **Layout：** Full Image；原始比例完整展示，僅保留課程名稱與基本資訊。
- **我可以怎麼講：** 這張圖比我的筆記完整，所以我會說它是課堂模型。我的心得只保留「RAG 不只是一層文件」。
- **技術限制：** 直拍需裁切；細小路徑不能作唯一證據；無本地 LLM Wiki 實作。
- **可否獨立閱讀：** 是。

### S008
- **Part／Course：** 課程回顧／Event-driven Trading
- **Title：** 先量現況，再讓 AI 提建議
- **這頁要講什麼：** 課程介紹、時間重疊狀態與前後測量方法。
- **正式畫面文字草案：** `現況觀測 → 詢問 AI → 實作修改 → 再次實測`。
- **來源：** `SUMMARY.md:160-194`、Trading `README.md`、`notes.md`。
- **圖片：** `.../1330-event-driven-trading/assets/workshop-photo-1.jpg`，同 S009。
- **Layout：** 上方課程資料，下方四步循環。
- **我可以怎麼講：** 先看系統現在發生什麼，再問 AI 可以怎麼改。改完不能直接相信，要再測一次。
- **技術限制：** 13:30 與 LLM Wiki 重疊；不宣稱完整參與或完整 benchmark。
- **可否獨立閱讀：** 是。

### S009
- **Part／Course：** 課程回顧／Event-driven Trading
- **Title：** 課堂圖片：把 AI 產出拉回可重跑
- **這頁要講什麼：** 用課堂圖片承接「觀測—優化—再實測」。
- **正式畫面文字草案：** `可重跑 · 可追查 · 可接續`。
- **來源：** `SUMMARY.md:171-188`、Trading `notes.md`。
- **圖片：** `hello-world-notes/session/2026-10-14/1330-event-driven-trading/assets/workshop-photo-1.jpg`。
- **Layout：** Full Image + 三句短註。
- **我可以怎麼講：** AI 產出不能只看當下有沒有跑完，要能重跑、追查，下一次還能接著處理。
- **技術限制：** 照片不是 benchmark 數據來源；原圖需裁切。
- **可否獨立閱讀：** 是。

### S010
- **Part／Course：** 課程回顧／Event-driven Trading
- **Title：** 改快不等於改對
- **這頁要講什麼：** 以少量流程說明效能、資料對帳與失敗重跑要一起看。
- **正式畫面文字草案：** `效能改善 + 資料對帳 + 失敗後可重跑`；`改完要再測`。
- **來源：** Trading `notes.md`、`README.md`、`SUMMARY.md:169-189`。
- **圖片：** 無，避免重複 S009。
- **Layout：** 三段橫向流程。
- **我可以怎麼講：** 我沒有把這堂課記成某一個 TPS 數字。比較重要的是資料有沒有對、失敗能不能重來。
- **技術限制：** 數據來自 notes／公開實驗紀錄，不是本 Repository 本地結果或 Production Capacity。
- **可否獨立閱讀：** 是。

### S011
- **Part／Course：** 課程回顧／Agent Compliance
- **Title：** 整條流程先設定邊界
- **這頁要講什麼：** 課程介紹與「每層做好自己的任務」的個人收穫。
- **正式畫面文字草案：** `流程邊界`／`分層責任`／`降低風險`。
- **來源：** `SUMMARY.md:198-231`、Compliance `README.md`、`notes.md`。
- **圖片：** photo-9 與 photo-6，於 S012 展示。
- **Layout：** 左課程資料、右 `意圖 → 檢查 → 執行／核准`。
- **我可以怎麼講：** 不要讓整條流程都靠 Agent 自己判斷。每一層切好邊界、做好自己的任務，風險比較容易控制。
- **技術限制：** 沒有可重跑 Compliance Harness／Policy Artifact；不宣稱已導入。
- **可否獨立閱讀：** 是。

### S012
- **Part／Course：** 課程回顧／Agent Compliance
- **Title：** 課堂圖片：Skill 與 Harness 的邊界
- **這頁要講什麼：** 放大兩張圖片，讓觀眾看見規範與執行限制的差別。
- **正式畫面文字草案：** `Skill 讓它做對`／`Harness 讓它錯不出去`。
- **來源：** `SUMMARY.md:211-217`、Compliance `notes.md`。
- **圖片：** `.../workshop-photo-9.jpg`、`.../workshop-photo-6.jpg`。
- **Layout：** 兩張大圖上下或左右對照。
- **我可以怎麼講：** Skill 告訴 Agent 怎麼做，Harness 在真的執行前後把風險擋住。
- **技術限制：** 照片需裁切／透視校正；課堂範例不等於公司控制。
- **可否獨立閱讀：** 是。

### S013
- **Part／Course：** 課程回顧／Cloud FinOps
- **Title：** 成本也要先估、再看報表、再優化
- **這頁要講什麼：** FinOps 課程介紹與持續優化循環。
- **正式畫面文字草案：** `估算 → 報表 → 成本異常 → 優化 → 再估算`。
- **來源：** `SUMMARY.md:235-265`、FinOps `README.md`、`notes.md`。
- **圖片：** `.../1515-cloud-finops/assets/workshop-photo-2.jpg`，同 S014。
- **Layout：** 左循環、右課程資料與心得。
- **我可以怎麼講：** 成本管理不是最後看帳單，而是先估算，再看報表和異常，優化後繼續追。
- **技術限制：** 成本數字缺單位、期間與基準，不放入正文。
- **可否獨立閱讀：** 是。

### S014
- **Part／Course：** 課程回顧／Cloud FinOps
- **Title：** 課堂圖片：成本治理不是一次性節省
- **這頁要講什麼：** 展示 FinOps 框架，支援持續優化心得。
- **正式畫面文字草案：** `Inform → Optimize → Operate`。
- **來源：** `SUMMARY.md:247-261`、FinOps `notes.md`。
- **圖片：** `hello-world-notes/session/2026-10-14/1515-cloud-finops/assets/workshop-photo-2.jpg`。
- **Layout：** Full Image + 一條循環圖說。
- **我可以怎麼講：** 我會把這張當課程畫面，不把照片上的金額當成公司節省成果。重點是它把成本管理畫成持續循環。
- **技術限制：** 檢查單位與投影可讀性；不推導 ROI。
- **可否獨立閱讀：** 是。

### S015
- **Part／Course：** 課程回顧／A2A、x402、AP2
- **Title：** Agent 如果要自己買服務
- **這頁要講什麼：** 課程介紹與 Agent 自動付款的未來情境。
- **正式畫面文字草案：** `Agent 找服務 → 需要付款 → 授權與付款 → 取得服務`；`Future scenario`。
- **來源：** `SUMMARY.md:269-302`、A2A `README.md`、`notes.md`。
- **圖片：** photo-11 與 photo-3，於 S016／S017 展示。
- **Layout：** 大型流程 + 課程資料。
- **我可以怎麼講：** 新鮮感在於 Agent 可能自己去買資料或服務。問題變成怎麼讓它在被授權的範圍內付款。
- **技術限制：** 不把完整協定責任或 Web3 方案寫成已採用。
- **可否獨立閱讀：** 是。

### S016
- **Part／Course：** 課程回顧／A2A、x402、AP2
- **Title：** 課堂圖片：付款不只是付款動作
- **這頁要講什麼：** 展示 AP2 圖片與付款授權問題。
- **正式畫面文字草案：** `誰代表誰？`／`誰批准？`／`可以花多少？`。
- **來源：** `SUMMARY.md:294-300`、A2A `notes.md`。
- **圖片：** `.../1600-agentic-a2a-x402-ap2/assets/workshop-photo-11.jpg`。
- **Layout：** 大圖 75% + 三個短註。
- **我可以怎麼講：** 我不會把這張圖講成完整支付系統，只用它說明付款仍要有授權與預算邊界。
- **技術限制：** 需裁切／透視校正；課堂示範不等於公司採用。
- **可否獨立閱讀：** 是。

### S017
- **Part／Course：** 課程回顧／A2A、x402、AP2
- **Title：** 課堂圖片：把付款放回服務流程
- **這頁要講什麼：** 展示 x402 圖片，補充付費 API 情境。
- **正式畫面文字草案：** `呼叫服務 → 付款要求 → 完成付款 → 取得資料`。
- **來源：** `SUMMARY.md:282-294`、A2A `notes.md`。
- **圖片：** `.../1600-agentic-a2a-x402-ap2/assets/workshop-photo-3.jpg`。
- **Layout：** 大圖 + 下方四步重繪。
- **我可以怎麼講：** 這張讓我比較容易理解付款是服務互動的一部分，而不是每次另外開人工付款頁。
- **技術限制：** 不宣稱已完成 Web3 Runtime 或 Production payment integration。
- **可否獨立閱讀：** 是。

### S018
- **Part／Course：** 課程回顧／Architecture Judgment
- **Title：** 這場我沒有留下具體重點
- **這頁要講什麼：** 誠實標示課程曾談工程判斷，但使用者沒有個人心得。
- **正式畫面文字草案：** `課程內容：AI 加速架構設計`；`個人心得：無重點`。
- **來源：** `SUMMARY.md:306-335`、Architecture Judgment `README.md`、`notes.md`。
- **圖片：** `.../1700-architecture-judgment/assets/workshop-photo-3.jpg` 可作情境圖。
- **Layout：** 課程卡 + 小圖，不做技術教學。
- **我可以怎麼講：** 這場我會誠實說自己沒有留下具體重點，只交代它在議程中出現過。
- **技術限制：** 不以官方摘要冒充個人收穫；圖片可因可讀性不足而不使用。
- **可否獨立閱讀：** 是。

## Part 2 — 10/15 課程回顧

### S019
- **Part／Course：** 課程回顧／Team Workflow
- **Title：** 把個人 AI 工作流拆成團隊流程
- **這頁要講什麼：** 課程介紹與 pipeline、工具、邊界的個人收穫。
- **正式畫面文字草案：** `Pipeline 規範`／`現有工具`／`流程拆解`／`邊界約束`。
- **來源：** `SUMMARY.md:341-373`、Team Workflow `README.md`、`notes.md`。
- **圖片：** `.../1010-ai-workflow-team/assets/workshop-photo-4.jpg`，同 S020。
- **Layout：** 左課程資訊，右四段流程。
- **我可以怎麼講：** 個人用 AI 變快還不夠，整體 pipeline 也要規範好。流程拆開、工具接上去，團隊才容易交接。
- **技術限制：** 沒有本場實際導入 repo 或 benchmark。
- **可否獨立閱讀：** 是。

### S020
- **Part／Course：** 課程回顧／Team Workflow
- **Title：** 課堂圖片：從小步驟到 Review
- **這頁要講什麼：** 展示 workflow 圖片，說明流程拆解與人工 Review。
- **正式畫面文字草案：** `小步驟實作 → 檢查 → Review → 交接`。
- **來源：** `SUMMARY.md:351-369`、Team Workflow `notes.md`。
- **圖片：** `hello-world-notes/session/2026-10-15/1010-ai-workflow-team/assets/workshop-photo-4.jpg`。
- **Layout：** Full Image + 四步圖說。
- **我可以怎麼講：** 不是一次產生全部，而是拆成小步驟，讓工具和人都能在中間檢查。
- **技術限制：** 圖片只證明課堂流程，不證明本專案已導入。
- **可否獨立閱讀：** 是。

### S021
- **Part／Course：** 課程回顧／Incident Investigation
- **Title：** 告警來了查一次，平常也可以巡檢
- **這頁要講什麼：** 課程介紹與兩種 Agent 觸發方式。
- **正式畫面文字草案：** `Alert-driven Agent`／`Scheduled Agent`；`共同目的：加速找問題`。
- **來源：** `SUMMARY.md:377-414`、Incident `README.md`、`notes.md`。
- **圖片：** photo-1 與 photo-3，於 S022 展示。
- **Layout：** 兩欄流程。
- **我可以怎麼講：** 一種 Agent 是告警發生才去查，另一種是固定時間檢查。共同點是加速找問題，不代表可以不看證據就自動修復。
- **技術限制：** queue、retry、timeout、權限與 root-cause 驗證尚不完整。
- **可否獨立閱讀：** 是。

### S022
- **Part／Course：** 課程回顧／Incident Investigation
- **Title：** 課堂圖片：從告警到可追查的調查流程
- **這頁要講什麼：** 展示人類調查與 SRE Agent 架構圖片。
- **正式畫面文字草案：** `告警／排程 → 取證 → 分析 → 報告／通知`。
- **來源：** `SUMMARY.md:397-409`、Incident `notes.md`。
- **圖片：** `.../1115-ai-incident-investigation/assets/workshop-photo-1.jpg`、`workshop-photo-3.jpg`。
- **Layout：** 兩圖左右對照 + 一條共同流程。
- **我可以怎麼講：** 先看人工調查流程，再看 Agent 怎麼加速同一條流程。重點不是模型直接猜 root cause，而是留下查過哪些資料。
- **技術限制：** 需檢查投影可讀性與敏感資訊；沒有完整本地 Runtime 證據。
- **可否獨立閱讀：** 是。

### S023
- **Part／Course：** 課程回顧／MCP OAuth Workshop
- **Title：** 讀和寫不是同一種權限
- **這頁要講什麼：** 課程介紹與 OAuth 2.0、Scope、讀寫分離。
- **正式畫面文字草案：** `OAuth 2.0`／`Scope`／`Read ≠ Write`。
- **來源：** `SUMMARY.md:418-449`、MCP `README.md`、`notes.md`、本地 `repo/`。
- **圖片：** 安全流程圖 `.../assets/image copy 6.png`，同 S024；敏感 `image.png` 不用。
- **Layout：** 左課程資料，右讀／寫分支。
- **我可以怎麼講：** 讀和寫要分開。Agent 要操作資料，不是有 Token 就全部可以做，而是要拿到對的 Scope。
- **技術限制：** Lab 01–05 可追溯；Kong Gateway Lab 06 待驗證／延伸。
- **可否獨立閱讀：** 是。

### S024
- **Part／Course：** 課程回顧／MCP OAuth Workshop
- **Title：** 課堂圖片：Scope 把讀寫權限分開
- **這頁要講什麼：** 放大展示無敏感值的 OAuth／Scope 流程圖。
- **正式畫面文字草案：** `notes:read → list notes`；`notes:write → create_note`；`Token 有效 ≠ 所有工具都能呼叫`。
- **來源：** `SUMMARY.md:431-447`、MCP `notes.md`、`repo/`。
- **圖片：** `hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image copy 6.png`。
- **Layout：** Full Image + 讀／寫註解；必要時依來源重繪 SVG。
- **我可以怎麼講：** 只有 read 可以列出筆記，不能直接 create；要寫入要重新取得包含 write 的權限。
- **技術限制：** 不載入含帳號、Token、UUID 或 Client ID 的舊版截圖。
- **可否獨立閱讀：** 是。

### S025
- **Part／Course：** 課程回顧／MCP OAuth Workshop
- **Title：** 從登入到可以操作，中間還有授權邊界
- **這頁要講什麼：** 用簡化流程交代 Client、授權與 MCP Server 責任。
- **正式畫面文字草案：** `Client → Authorization → Access Token／Scope → MCP Server 驗證 → Tool`。
- **來源：** MCP `notes.md`、本地 `repo/`、`SUMMARY.md:431-447`。
- **圖片：** NO_IMAGE；以來源確認的 SVG 重繪。
- **Layout：** 單線流程 + 兩個 trust boundary。
- **我可以怎麼講：** 登入只是開始，真正操作工具還要經過 Scope 和 Server 的檢查。
- **技術限制：** 僅限 Workshop Lab；不宣稱企業 Production IAM 或即時撤銷完成。
- **可否獨立閱讀：** 是。

### S026
- **Part／Course：** 課程回顧／MCP OAuth Workshop
- **Title：** 課堂圖片：授權請求與 Scope
- **這頁要講什麼：** 展示經不可逆像素遮蔽的授權請求畫面；保留 Scope 與操作流程，移除實際帳號與環境識別資訊。
- **正式畫面文字草案：** `notes:read`／`授權存取`。
- **來源：** MCP Workshop 原始照片 `03_課堂照片.png`；展示副本 `presentation-v2/assets/redacted/mcp-03-redacted.png`。
- **圖片：** 脫敏副本；不得載入原圖。
- **Layout：** Full Image + 課程標題；保持原始比例，`contain`。
- **我可以怎麼講：** 這張是授權請求的課堂畫面。實際帳號與環境資訊已移除，只保留可以說明 Scope 的技術內容。
- **技術限制：** 脫敏副本不是原始證據的完整重現；原圖不可公開展示。
- **可否獨立閱讀：** 是。

### S027
- **Part／Course：** 課程回顧／MCP OAuth Workshop
- **Title：** 課堂圖片：OAuth Client 執行流程
- **這頁要講什麼：** 展示經不可逆像素遮蔽的終端機與授權操作畫面；保留一般操作脈絡，移除實際參數、路徑與識別值。
- **正式畫面文字草案：** `OAuth authorization`／`MCP tool call`。
- **來源：** MCP Workshop 原始照片 `04_課堂照片.png`；展示副本 `presentation-v2/assets/redacted/mcp-04-redacted.png`。
- **圖片：** 脫敏副本；不得載入原圖。
- **Layout：** Full Image + 課程標題；保持原始比例，`contain`。
- **我可以怎麼講：** 這張保留的是操作順序與工具互動的課堂畫面。實際 Client ID、URL、Token 路徑與個人環境資訊都不放進公開簡報。
- **技術限制：** 脫敏副本不是可重跑的實作證據；原圖不可公開展示。
- **可否獨立閱讀：** 是。

### S028
- **Part／Course：** 課程回顧／ACP Coding Agent
- **Title：** 課程內容：聊天平台只是入口
- **這頁要講什麼：** 回顧 ACP，但標明沒有本輪符合規則的個人心得。
- **正式畫面文字草案：** `聊天平台 → Adapter → Session → ACP → Agent Runtime`；`課程內容整理，非個人心得`。
- **來源：** `SUMMARY.md:453-490`、ACP `README.md`、`notes.md`。
- **圖片：** 無；課程資料夾沒有可安全引用圖片。
- **Layout：** 簡單流程圖 + 限制標籤。
- **我可以怎麼講：** 這場我只做課程回顧，不假裝是自己的心得。客觀上它在談聊天平台後面需要維持 Session Runtime。
- **技術限制：** 沒有本地 OpenAB Runtime Artifact；部署與恢復未完整驗證。
- **可否獨立閱讀：** 是。

### S029
- **Part／Course：** 課程回顧／Harness Engineering
- **Title：** Prompt、Context、Harness 各管一件事
- **這頁要講什麼：** 課程介紹與三層約束的個人筆記。
- **正式畫面文字草案：** `Prompt：叫 AI 做什麼`／`Context：給 AI 什麼資料`／`Harness：外部工具如何約束`。
- **來源：** `SUMMARY.md:494-528`、Harness `README.md`、`notes.md`。
- **圖片：** `.../1600-harness-engineering/assets/workshop-photo-5.jpg`，同 S030。
- **Layout：** 三層模型搭配課程資料。
- **我可以怎麼講：** Prompt 說任務，Context 給資料，Harness 是外部工具和限制，管住 AI 實際能做的事。
- **技術限制：** 不延伸成完整 Multi-Agent、Recovery 或已完成導入。
- **可否獨立閱讀：** 是。

### S030
- **Part／Course：** 課程回顧／Harness Engineering
- **Title：** 課堂圖片：穩定的 Agent 不只靠 Prompt
- **這頁要講什麼：** 展示三層課堂圖，讓概念成為可記憶畫面。
- **正式畫面文字草案：** `Prompt`／`Context`／`Harness`。
- **來源：** `SUMMARY.md:520-526`、Harness `notes.md`。
- **圖片：** `hello-world-notes/session/2026-10-15/1600-harness-engineering/assets/workshop-photo-5.jpg`。
- **Layout：** Full Image + 三個中文短標。
- **我可以怎麼講：** 這張圖是我記憶三層模型的主要畫面，不往下講所有 Harness 元件。
- **技術限制：** 直拍需裁切；課堂模型不等於本專案已有完整 Harness。
- **可否獨立閱讀：** 是。

### S031
- **Part／Course：** 課程回顧／Harness Engineering
- **Title：** 課堂圖片：Harness — AI Engineering Roadmap
- **這頁要講什麼：** 展示 Harness Engineering 課堂原始照片，保留 Prompt、Context、Harness 與執行流程的投影片內容。
- **正式畫面文字草案：** `Harness — AI Engineering Roadmap`。
- **來源：** `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/16時00分_Harness Engineering與Prompt實務/02_課堂照片.jpg`。
- **圖片：** 原始照片，未裁切、未修改，`contain`。
- **Layout：** Full Image + 課程標題；保持直式原比例。
- **我可以怎麼講：** 這張是課堂現場的 Roadmap 投影片。它補充前一頁的三層模型，但不把課堂畫面宣稱成已完成的本地 Runtime。
- **技術限制：** 直式照片的投影片細字在遠距投影下有限；不以細字作為唯一證據。
- **可否獨立閱讀：** 是。

### S032
- **Part／Course：** 課程回顧／Lint + Architecture Test
- **Title：** 課程內容：規則要變成可執行檢查
- **這頁要講什麼：** 回顧 Agent、Git Hook、CI 防護概念，標示不是個人心得。
- **正式畫面文字草案：** `Agent 自我驗證 → Git Hook → CI`；`課程內容整理，非個人心得`。
- **來源：** `SUMMARY.md:532-560`、Lint `README.md`、`notes.md`。
- **圖片：** `.../1700-lint-architecture-test/assets/workshop-photo-5.jpg`，同 S033。
- **Layout：** 左三層防線，右課程說明。
- **我可以怎麼講：** 這場沒有留下自己的重點，所以只回顧課程。它在講規則要真的被 Agent、Git Hook、CI 執行，而不是只寫在 Prompt。
- **技術限制：** 本專案沒有新增 lint／Architecture Test Artifact。
- **可否獨立閱讀：** 是。

### S033
- **Part／Course：** 課程回顧／Lint + Architecture Test
- **Title：** 課堂圖片：三層防護欄
- **這頁要講什麼：** 展示課堂圖片，分開課程內容與個人心得。
- **正式畫面文字草案：** `Agent → Git Hook → CI + repository protection`。
- **來源：** `SUMMARY.md:548-558`、Lint `notes.md`。
- **圖片：** `hello-world-notes/session/2026-10-15/1700-lint-architecture-test/assets/workshop-photo-5.jpg`。
- **Layout：** 大圖 70% + 一句圖說。
- **我可以怎麼講：** 我把這張當課堂記錄，不說成自己已做完。能不能落地，還要看後續 POC 和可重跑命令。
- **技術限制：** 需裁切與投影 QA；沒有本地可重跑成果。
- **可否獨立閱讀：** 是。

## Part 3 — 個人總結與公司應用

### S034
- **Part／Course：** 跨課程個人總結
- **Title：** 這兩天我真正記住的四件事
- **這頁要講什麼：** 把已納入課程的心得整理成共同方向。
- **正式畫面文字草案：** `先把現況看清楚`／`把流程與責任切開`／`讓 AI 的行動有邊界`／`做完一定要再驗證`。
- **來源：** `MY-TAKEAWAYS.md` 中 Structurizr、Trading、Compliance／Team、MCP／Harness、FinOps、Incident 條目。
- **圖片：** 不新增圖片；可用前頁縮圖索引。
- **Layout：** 四段縱向總結。
- **我可以怎麼講：** 如果濃縮兩天，我留下的不是一堆名詞，而是四個做事方式：先看清楚，再切責任，讓行動有邊界，最後用結果驗證。
- **技術限制：** 這是跨課程整理，不代表每堂課提出相同方法。
- **可否獨立閱讀：** 是。

### S035
- **Part／Course：** 公司應用候選
- **Title：** 可以帶回公司的，不是整套框架
- **這頁要講什麼：** 提出由個人心得支持的候選方向，不宣稱已決定採用。
- **正式畫面文字草案：** `AI 修改前後固定重測`／`流程設邊界與人工核准`／`讀寫權限分開`／`成本優化變成循環`。
- **來源：** Trading、Compliance、MCP、FinOps、Team 的 `MY-TAKEAWAYS.md` 條目。
- **圖片：** 無；四個候選方向流程。
- **Layout：** Light 候選清單，標籤 `Candidate / 未評估`。
- **我可以怎麼講：** 這些不是已決定導入的方案，而是從心得延伸出的候選。下一步應先挑一個小範圍 POC。
- **技術限制：** 沒有公司現況評估、成本基準、權限模型或 POC 結果。
- **可否獨立閱讀：** 是。

