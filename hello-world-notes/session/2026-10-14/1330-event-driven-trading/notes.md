# Notes — 用 AI 工作流重整事件驅動交易系統的一致性、效能與監測

- 講師：蔡宜庭（ET）
- 來源：[eap-infra GitHub](https://github.com/Yitin-tsai/eap-infra)
- 本文依公開 Repo 的實驗紀錄整理，不等於講者現場逐字內容。

## 一句話總結

透過壓測找出**哪一個處理步驟拖慢整個交易流程**，讓 AI 協助提出與驗證修改；即使速度變快，只要交易資料不正確就不採用。

## 系統怎麼運作？

買賣雙方下單 → **Order** 記錄訂單 → **Wallet** 保留資產 → **MatchEngine** 撮合 → Order 更新成交、Wallet 結算。三個服務透過 RabbitMQ 傳遞事件，各自保存業務資料。

## 案例 1：逐筆清理造成資料庫寫入太多（採用）

- **問題：** MatchEngine 撮合時會暫時保留訂單，成交後還要清理保留紀錄。原本每個清理工作都對 PostgreSQL 執行一次 `UPDATE`；約 30,000 筆清理就需要約 30,000 次更新，增加寫入負擔並延遲後續處理。
- **處理：** 保留可持久化、可重試的清理任務，但把已取得處理權的任務改成批次 SQL，約 30,000 次降為 **32 次**。
- **結果：** BUY 觸發成交速率 **664 → 922 trades/s**，最大積壓 **14,110 → 6,261**，Match 到 Wallet 的 p95 延遲 **13.6 → 4.5 秒**。
- **為何採用：** 不只變快，三服務的 30,000 筆成交 ID 與資產也都核對正確。此為特定依序測試，不是正式環境容量。

## 案例 2：取消交易邊界讓結算更快，卻不安全（拒絕）

- **問題：** Wallet 結算涉及成交紀錄及買賣雙方資產更新。為加速，曾移除事件處理器外層的 `Transaction`，讓 SQL 自動提交；但 Java 要等 SQL 回傳後才檢查結算紀錄與兩個 Wallet 更新是否全部成功。**一旦 SQL 已提交而業務檢查失敗，就不能把它們一起回滾。** 強制重跑 PostgreSQL 測試，也發現買賣雙方角色對調時的資料庫 Deadlock。
- **處理：** 恢復「每筆事件一個 Transaction」，依固定 Wallet UUID 順序鎖定資料列，補測錢包不存在、資產不足和角色對調的併行情況。
- **結果：** 原最佳化的隔離測試 **11,799 → 20,405 settlements/s（+72.9%）**，但因正確性風險仍**拒絕**，數字不得當成目前系統容量。
- **為何拒絕：** 結算不能只求速度；必須能確保整筆業務操作成立，或在失敗時回滾。

## 案例 3：單一排程執行緒阻塞出貨事件；進一步查出重複成交

- **問題 A（效能）：** MatchEngine 的 Spring 排程器只有 **1 條執行緒**。一批訂單清理最長花 **9.38 秒**，卡住同一排程器上的 `TradeOutboxRelay`，導致成交事件延後送到 Order 和 Wallet。800 orders/s 測試時，實際同窗完成僅 **167.93 trades/s**，最大積壓 **4,090**。
- **處理 A：** 把成交事件外送排程與清理排程拆開，互不阻塞。
- **結果 A：** 同條件 800 orders/s 診斷達 **383.45 trades/s**，積壓降到 **246**，短測的交易資料正確，因此採用排程隔離。
- **問題 B（一致性）：** 後續提高負載時，最終對帳發現 MatchEngine 有 **42,500** 筆成交，Order／Wallet 卻只有 **42,499** 筆，另有一筆 DLQ。根因是 Redis 訂單保留的修復程式用「訂單 ID＋跨程序時間戳」推測對應成交，錯把已成交買單當成沒有成交，重新放回訂單簿，導致**同一張買單撮合兩次**。
- **處理 B：** 在每筆 Redis 保留紀錄存放精確的 `tradeId`，清理與修復時必須比對相同 `tradeId`。
- **結果 B：** 修正後 **52,500 筆訂單 → 26,250 筆成交**，三服務一致，資料與積壓都正常；但 **800 orders/s 仍未通過效能關卡**，不能宣稱可以穩定承載。

## 壓測到底驗什麼？

用 **k6** 持續送買賣訂單。2026-09-04 的一個測試是 **60 秒暖機＋900 秒量測**，每秒約接受 **200 筆訂單**，最終 **192,000 筆訂單 → 96,000 筆成交**，三服務成交 ID 一致、資產正確、相關積壓歸零。

**注意：** 接受訂單 ≠ 完成成交；RabbitMQ queue 清空 ≠ 背景工作都做完。這是單機、單次、特定版本的診斷結果，不代表正式環境 SLA。

## 這堂課的重點

**AI 可以協助提出瓶頸假設與修改，但最後要靠同條件壓測、資料對帳、失敗測試及人工決策，判斷改動是否真的安全。**

## 原始資料

- [AI 工程工作流（含採用／拒絕案例）](https://github.com/Yitin-tsai/eap-infra/blob/main/docs/ai-engineering-workflow.md)
- [Wallet 交易邊界與回歸測試](https://github.com/Yitin-tsai/eap-infra/blob/main/docs/benchmarks/2026-08-05-wallet-settlement-robustness.md)
- [排程瓶頸、重複成交與修正](https://github.com/Yitin-tsai/eap-infra/blob/main/docs/benchmarks/2026-08-07-canonical-mixed-http-diagnostic.md)
- [2026-09-04 全鏈壓測](https://github.com/Yitin-tsai/eap-infra/blob/main/docs/benchmarks/2026-09-04-current-reliability-full-chain.md)
- https://github.com/Yitin-tsai/eap-infra


