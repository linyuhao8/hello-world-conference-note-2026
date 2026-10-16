# Notes｜讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊

- **日期**：2026/10/15 13:00–15:00
- **講師**：吳柏毅（appleboy）｜Mediatek 後端架構工程師
- **教材**：[mcp-oauth2-workshop](https://github.com/go-training/mcp-oauth2-workshop)

## 簡報與素材說明

本場有授權紀錄、Client 設定、Redirect URI、Token 操作與終端機畫面。這些畫面能說明 OAuth 流程，但同時包含帳號、識別碼、內部 URL 或授權操作資訊，因此不直接嵌入筆記；以下用文字保留簡報要點：

- OAuth 流程是「登入與同意 → Authorization Code → Token → MCP Server 驗證」。
- `scope` 說明能做什麼，`audience／resource` 說明 Token 是給哪個 Server，兩者不能混為一談。
- Token 撤銷與離線 JWT 驗證的生效時間不同，這是實作時需要明確接受的限制。

## 一句話總結

OAuth 負責確認「誰可以使用服務」，MCP 負責讓 AI 標準化發現與呼叫工具；Kong Gateway 則可集中處理多個 MCP Server 的入口驗證。

## 核心角色

```text
使用者：在瀏覽器登入並同意授權
AI CLI／MCP Client：保存 Token、發出工具呼叫
Signet：OAuth Authorization Server，負責登入與簽發 Token
Kong／MCP Server：驗證 Token 與權限
MCP Tool：執行實際的資料或業務操作
```

## Lab 學習路徑

1. **Lab 01｜MCP 起手式**：匿名呼叫 `whoami`、`list_notes`、`create_note`，理解 MCP Client 如何呼叫 Server。
2. **Lab 02｜授權探索**：從 `401` 與 `WWW-Authenticate` 找到 PRM，再由 PRM 找到 Signet 的 metadata。
3. **Lab 03｜Authorization Code + PKCE**：瀏覽器登入、取得 Access Token，Server 驗證後由 `whoami` 回傳登入身分。
4. **Lab 04｜scope 與 audience**：`notes:read` 可以讀取但不能寫入；發給 Server A 的 Token 不能呼叫 Server B。
5. **Lab 05｜Token 撤銷**：使用 public Client 撤銷 Token，不需要 client secret；離線 JWT 驗證不一定會立即反映撤銷。
6. **Lab 06｜Kong Gateway**：把共通的 JWT／入口驗證移到 Kong，MCP backend 保留工具與資料權限。

## OAuth 與 MCP 的分工

```text
Signet：登入、同意授權、簽發 Access Token
MCP Client：帶 Token 呼叫工具
MCP Server：驗證身份、scope、audience，執行工具
MCP：定義 Client 與工具服務如何溝通，不是登入系統本身
```

登入後，AI 不應直接取得或處理 Token；由 CLI／MCP Client 保存 Token，AI 只提出工具呼叫。

## Lab 04 的權限觀念

- `notes:read`：可讀取筆記。
- `notes:write`：可建立筆記；缺少時回 `403 insufficient_scope`。
- `audience／resource`：Token 只適用於指定 MCP Server；送到錯誤 Server 時回 `401`。
- `subject`：辨識使用者，Server 可依 subject 隔離資料。

## Lab 04 與 Lab 06 的架構差異

### 原本：MCP Server 自己驗證

```text
AI Client → MCP Server :8000
              ├─ 驗證 JWT
              ├─ 檢查 scope / audience
              └─ 執行工具
```

### Lab 06：Kong 集中驗證

```text
AI Client → Kong Gateway :9000 → MCP Backend
              ├─ 驗證 JWT、issuer、audience、expiry
              └─ 入口 scope

MCP Backend：確認來自可信任 Gateway，並保留工具與資料權限。
```

## 最重要的安全觀念

- `401`：沒有有效身份或 Token 不適用於這個 resource。
- `403`：身份有效，但權限不足。
- 瀏覽器登入不代表每個 HTTP 請求都自動帶 Token。
- Client ID 是公開識別資料，不是密碼；Token 不可貼到聊天、截圖或提交 Git。
- Gateway 通過入口驗證，不代表使用者擁有所有工具權限。
- Token 撤銷與 Server 立即拒絕是兩件事；離線 JWT 驗證可能在 Token 過期前仍接受它。

## 實作成果

- 使用 Python 路線完成依賴安裝與 Lab 01–05。
- 完成 OAuth 2.0 + PKCE 登入並取得 `notes:read` Token。
- 成功使用 Token 呼叫 MCP `whoami`。
- 驗證匿名、scope 不足、audience、Token 撤銷等情境。
- Lab 06 的目標是用 Docker 啟動 Kong Gateway，將 MCP 入口改由 `localhost:9000` 提供。

## 後續行動

- [ ] 確認 Docker Engine、Compose、Buildx 可用。
- [ ] 建置並啟動 Lab 06 的 Kong + Python backend。
- [ ] 取得針對 `http://localhost:9000/mcp` 的新 Token。
- [ ] 驗證 Kong 成功轉送 `whoami` 與 `create_note`。
