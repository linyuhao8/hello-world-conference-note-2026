# Notes

## 一句話總結

OpenAB 是一個把 Discord／Slack 等聊天平台接到 ACP coding agent 的 thin broker：每個討論串維持自己的 agent session，透過 stdio JSON-RPC 傳遞 prompt、tool call、thinking、permission 與串流回覆，因此可以把「交辦工作 → 持續追問 → 看見進度」放進團隊原本使用的聊天工具。

## 現場重點

### 1. 真正的資料流不是單次 Prompt 轉送

官方架構圖與 README 描述的邊界是：

```text
Discord／Slack 使用者
    └─ Gateway adapter
        └─ dispatcher + session pool
            └─ ACP stdio / JSON-RPC
                └─ agent runtime（Kiro、Claude、Codex、Gemini、OpenCode…）
```

OpenAB 將不同平台導入同一套 dispatcher 與 session pool，再透過 ACP stdio boundary 接到所選 agent runtime。這解釋了為什麼換 agent 不必重做聊天平台整合；變的是 agent backend 與設定，不是上游對話入口。

### 2. 一個 Discord thread 對應一個 agent session

- 在允許的 Discord 頻道中 `@mention` bot，OpenAB 會從該訊息建立 thread。
- 後續訊息會沿用該 thread 的 session；單一 bot thread 預設不需要再次 `@mention`。
- 官方文件指出每個 thread 有自己的 agent session，閒置超過 `session_ttl_hours`（預設 24 小時）後會清理。
- Discord 的 edit-streaming 會先送 placeholder，再每 1.5 秒更新訊息；因此使用者能看到 agent 正在工作，而不是只收到最後結果。

### 3. ACP 的價值是統一 agent 能力與權限邊界

OpenAB 支援的 agent backend 不只一個，例如 Codex 使用 `codex-acp`，Gemini 使用 `gemini --acp`，OpenCode 使用 `opencode acp`。README 也明確列出 ACP 透過 stdio JSON-RPC 支援 tool call、thinking 與 permission auto-reply。

## 新學到的觀念

### Session lifecycle 應該以對話 thread 為單位

若把每次聊天訊息都當成獨立請求，agent 會失去前文；OpenAB 的做法是讓 thread 成為 session key，再以 session pool 管理 CLI process。設定中的 `max_sessions = 10` 可限制同時 session 數量，`session_ttl_hours = 24` 則限制閒置 session 的生命週期。

### 平台權限與 agent 權限是兩層不同的控制

1. Discord 層：`allowed_channels`、`allowed_users`、bot permissions 與 Gateway Intents 決定誰能把訊息送進 OpenAB。
2. ACP／agent 層：例如 Codex 的 `mode` 決定 agent 是否只能讀取、可寫 workspace，或擁有完整權限與網路。

這兩層不能互相取代：Discord allowlist 只限制「誰能觸發」，不代表 agent 在容器內就安全；反過來，agent 的 read-only 也不會阻止未授權使用者呼叫 bot。

### 多 agent 協作需要 admission control

官方 Discord 文件把 `allow_bot_messages`、`trusted_bot_ids`、`allow_user_messages = "multibot-mentions"` 與 bot turn limit 分開設計。這代表 bot-to-bot workflow 不是單純把所有訊息互相轉發，而是要控制：哪些 bot 可進場、何時需要明確 mention，以及最多允許多少連續 bot turns。

## 講者的實務經驗／踩坑

- 聊天室本身有上下文，不代表任意 headless adapter request 會自動取得上下文；必須由 adapter／session pool 明確保存並重新帶入。
- `@mention` 只負責啟動對話；後續追問能否省略 mention，取決於 `allow_user_messages` 模式。多 bot 頻道建議使用 `multibot-mentions`，避免所有 bot 對每句話同時回應。
- Discord 一則訊息只能建立一個 thread；官方文件列為 multi-bot known limitation：同一則訊息同時 mention 兩個 bot 時，只有第一個 bot 建立 thread，另一個可能被丟棄。實務上可分兩則訊息 mention，或用 shared role 搭配 `allowed_role_ids`。
- bot-to-bot 對話若沒有上限可能形成 loop。OpenAB 預設 `max_bot_turns = 100`，並另有不可設定的 1000 次 hard limit。
- Codex 的 `agent-full-access` 會移除內層 sandbox 與 approval prompt；官方明確要求只在外層已有專用 container／VM isolation 時使用，避免掛載 host filesystem、Docker socket 或不必要 credentials。否則應使用 `agent` 或 `read-only`。
- Codex adapter 的舊模式名稱 `auto`／`full-access` 已改成 `agent`／`agent-full-access`；舊設定不會由 OpenAB 自動轉換，升級後可能安全地退回保守的 `agent` 模式。

## 實際具體用法

### 用法 A：用 Helm 部署一個 Discord + Codex bot

以下是官方 `docs/codex.md` 的可執行流程；其中 token 與 channel ID 必須替換成自己的值：

```bash
helm repo add openab https://openabdev.github.io/openab
helm repo update

helm install openab openab/openab \
  --set agents.kiro.enabled=false \
  --set agents.codex.discord.enabled=true \
  --set agents.codex.discord.botToken="$DISCORD_BOT_TOKEN" \
  --set-string 'agents.codex.discord.allowedChannels[0]=YOUR_CHANNEL_ID' \
  --set agents.codex.workingDir=/home/node \
  --set image.tag=beta
```

第一次登入 Codex：

```bash
kubectl exec -it deployment/openab-codex -- sh -c "$OPENAB_AGENT_AUTH_COMMAND"
kubectl rollout restart deployment/openab-codex
```

Discord Developer Portal 也要開啟 Message Content Intent、Server Members Intent，並給 bot `Send Messages`、`Send Messages in Threads`、`Create Public Threads`、`Read Message History`、`Add Reactions`、`Manage Messages` 等權限；否則部署成功但 bot 仍可能無法建立 thread 或讀訊息。

部署後的驗證步驟：

1. 在 allowlist channel 輸入 `@YourBot explain this code`。
2. 確認 bot 建立 thread 並開始回覆。
3. 在同一 thread 輸入 `請列出你修改過的檔案，並執行測試`，確認不需再次 mention 且仍使用同一段上下文。
4. 觀察回覆是否先出現 placeholder，再以約 1.5 秒頻率更新。

### 用法 B：限制 agent 可操作的範圍

若 OpenAB 所在 container／VM 沒有可靠的外層隔離，使用保守模式：

```toml
[pool]
default_config_options = { mode = "read-only" }
```

需要 agent 修改掛載 workspace、但不需要網路時：

```toml
[pool]
default_config_options = { mode = "agent" }
```

只有在專用 container／VM、沒有 host filesystem 或 Docker socket 掛載，且 credentials／network 都已限縮時，才考慮：

```toml
[pool]
default_config_options = { mode = "agent-full-access" }
```

這個設定會在 ACP `session/new` 後明確送出，並非把權限偷偷編進 image；但 `agent-full-access` 仍代表 agent 可以修改掛載檔案並使用 container network，所以部署邊界必須先成立。

### 用法 C：把 bot 限制在指定頻道與使用者

```toml
[discord]
bot_token = "${DISCORD_BOT_TOKEN}"
allowed_channels = ["123456789"]
allowed_users = ["987654321"]
allow_user_messages = "multibot-mentions"
allow_bot_messages = "off"

[pool]
max_sessions = 10
session_ttl_hours = 24
```

`allowed_channels` 與 `allowed_users` 是 AND 關係：同時符合頻道與使用者才會處理；被拒絕的使用者會收到 🚫 reaction 且沒有 agent reply。將 channel／user／role ID 傳給 Helm 時應使用 `--set-string`，官方文件特別提醒可避免數字精度遺失。

### 用法 D：兩個 bot 協作 code review → deploy

可讓接收 bot 處理 bot message：

```toml
[discord]
allow_bot_messages = "mentions"
trusted_bot_ids = ["123456789012345678"]
max_bot_turns = 200
```

實際流程可以是：

1. 人類在 thread mention reviewer bot：「檢查這個 PR 的測試與安全風險」。
2. reviewer bot 明確 mention deploy bot，交付「只部署已通過檢查的 commit」的結果。
3. deploy bot 僅在 `trusted_bot_ids` 與 mention 條件符合時接手。
4. 若兩個 bot 開始 ping-pong，`max_bot_turns` 防止無限迴圈。

這是依據官方 admission gate 與 turn limit 設計出的工作流程示例；OpenAB 文件證明了控制機制存在，但「reviewer → deploy」本身是應用層用法，不是官方保證的內建 pipeline。

## 我的想法

OpenAB 的重點不是「在 Discord 裡放一個聊天機器人」，而是把聊天訊息轉成一個有生命週期、權限、可觀察串流與隔離邊界的 coding job。對公司而言，最值得借鏡的是把以下欄位當成一級資料：`thread_id`、agent type、session status、目前工具操作、最後一次事件、取消／重試狀態與 workspace。

若要導入內部環境，我會先做單一 bot + 單一 allowlist channel + read-only／agent 模式的 pilot，先驗證 session continuity、失敗恢復與 audit log，再考慮 `agent-full-access` 或 multi-agent delegation。

## 對公司可能有用的地方

- **工程支援頻道**：把「查 log、解釋 stack trace、產生測試、整理 PR」交給 thread-scoped agent，讓討論與產出留在同一處。
- **值班／維運**：以 `allowed_users`、`allowed_channels` 和 read-only 模式先做診斷；任何寫入或部署操作再要求明確授權與人工確認。
- **多 agent 分工**：review bot、test bot、deploy bot 使用 `trusted_bot_ids` 與 `max_bot_turns` 串接，但每一個 delegation 都要記錄來源 bot、目標 bot、thread 和 commit。
- **可替換 backend**：先用 Codex 或現有 CLI 做試點，之後可依任務換成 Claude、Gemini、OpenCode 等 ACP-compatible CLI，而不必改聊天入口。
- **雲端隔離**：若需要完整權限，研究 AgentCore／microVM 或專用 container；不要直接把 host filesystem、Docker socket 或長期 credentials 掛進 agent。

## 個人可以應用的地方

- 在個人測試 repo 建立一個 allowlist Discord channel，請 agent 執行「讀 README → 修改一個小功能 → 跑測試 → 回報 diff」的完整 thread workflow。
- 用 `read-only` 做 codebase 導覽與問題診斷，確認上下文與串流體驗後，再升級到 `agent`。
- 把每次 agent 工作的 thread URL、commit SHA、測試結果與權限模式記錄下來，方便回溯「它看了什麼、改了什麼、在哪個環境改的」。
- 測試 session TTL：同一 thread 於 24 小時內追問應保留上下文；超過 TTL 後應預期 session 被清理，重新交代必要背景。

## 後續研究／行動

- [ ] 以測試 Discord server 實作單一 Codex bot，確認 Helm values、PVC、登入與 restart 後的 session／auth 持久性。
- [ ] 建立最小權限矩陣：Discord channel/user allowlist × ACP `read-only`／`agent`／`agent-full-access`。
- [ ] 實測「同一 thread 連續三次追問」是否保持上下文，並保存 streaming event log 與最終回覆。
- [ ] 實測 bot crash、session TTL 到期、agent CLI authentication failure 時的恢復與錯誤訊息。
- [ ] 研究 OpenAB 的 cancel／resume 實作與事件紀錄；目前本筆記只確認官方 README／文件明確描述 session pool、streaming、permission 與 lifecycle，沒有把未查到的 cancel 行為寫成已驗證功能。
- [ ] 若導入 multi-agent，先設計 trusted bot、turn limit、人工介入與 audit log，再開啟 `allow_bot_messages`。

## 素材與參考連結

- [官方 repository README](https://github.com/openabdev/openab)：架構、支援平台、快速開始、agent 清單與部署方式。
- [官方繁體中文 README](https://github.com/openabdev/openab/blob/main/README.zh-TW.md)：中文架構說明、Helm 範例、session pool 與 ACP 功能描述。
- [Discord Guide](https://github.com/openabdev/openab/blob/main/docs/discord.md)：Bot permissions、allowlist、thread/session、streaming、multi-bot gate 與 troubleshooting。
- [Codex adapter guide](https://github.com/openabdev/openab/blob/main/docs/codex.md)：Codex image、Helm、登入、ACP mode、PVC 與安全警告。
- [Configuration Reference](https://github.com/openabdev/openab/blob/main/docs/config-reference.md)：完整設定與 Helm mapping。
- [Multi-agent guide](https://github.com/openabdev/openab/blob/main/docs/multi-agent.md)：bot-to-bot 協作設定與訊息流程。
- [官方 Session snapshot：4985](../../../../data/sessions/4985.md)
- [Hello World Dev Conf 2026 共筆](https://hackmd.io/@HWDC/2026)

## 證據邊界

本筆記的 OpenAB 行為與指令以官方 repository 的 `main` 分支文件為依據，查閱日期為 2026-10-16。部署是否成功、特定 agent 版本的實際輸出、以及本環境能否提供對應 Discord／Kubernetes credentials，仍需在測試環境實跑；不能只根據 README 宣稱已驗證。
