# HWDC 2026 — Image Plan

> 以下列出 SUMMARY.md 直接引用的 15 張圖片。原圖保留在 `hello-world-notes/`，不複製、不修改。另列出已知敏感的 MCP 截圖與本輪建立的脫敏展示副本。

| 原始圖片路徑 | 對應課程 | 使用頁面 | 展示目的 | 裁切／透視 | 敏感資訊 | 投影可讀性風險 |
|---|---|---|---|---|---|---|
| `hello-world-notes/session/2026-10-14/1010-structurizr-opencode/assets/image.png` | Structurizr × OpenCode | S004–S005 | 實際架構／部署視角 | 裁導覽區；局部放大；必要時透視校正 | 未見敏感值 | 架構細字需放大 |
| `hello-world-notes/session/2026-10-14/1330-llm-wiki/assets/workshop-photo-5.jpg` | LLM Wiki | S006–S007 | Raw／Wiki／Ops 課堂模型 | 裁天花板、觀眾與講者 | 未見 Token／帳密 | 直拍、細字小 |
| `hello-world-notes/session/2026-10-14/1330-event-driven-trading/assets/workshop-photo-1.jpg` | Event-driven Trading | S008–S009 | 可重跑、可追查、可接續 | 裁投影幕中央，排除桌面 | 未見 Token／帳密；公開 URL 可縮小 | 主標可讀，細字需重繪 |
| `hello-world-notes/session/2026-10-14/1415-agent-compliance-skills/assets/workshop-photo-9.jpg` | Agent Compliance | S011–S012 | Agent 治理課堂畫面 | 裁投影幕；透視校正 | 未見實際 Secret | 投影區偏小 |
| `hello-world-notes/session/2026-10-14/1415-agent-compliance-skills/assets/workshop-photo-6.jpg` | Agent Compliance | S011–S012 | Skill／Harness 與 Audit | 裁投影幕；校正透視與曝光 | 未見 PAT／Token 值 | 色偏、細字 |
| `hello-world-notes/session/2026-10-14/1515-cloud-finops/assets/workshop-photo-2.jpg` | Cloud FinOps | S013–S014 | Inform／Optimize／Operate | 保留投影幕，排除背景 | 需再次檢查 | 數字不能直接轉錄 |
| `hello-world-notes/session/2026-10-14/1600-agentic-a2a-x402-ap2/assets/workshop-photo-11.jpg` | A2A／x402／AP2 | S015–S016 | AP2 付款授權 | 裁投影幕；透視校正 | 需再次檢查 | 細字需短註解支援 |
| `hello-world-notes/session/2026-10-14/1600-agentic-a2a-x402-ap2/assets/workshop-photo-3.jpg` | A2A／x402／AP2 | S017 | x402 付款流程比較 | 裁比較圖主體 | 需再次檢查 | 細小欄位可能不可讀 |
| `hello-world-notes/session/2026-10-14/1700-architecture-judgment/assets/workshop-photo-3.jpg` | Architecture Judgment | S018 | 課程情境記錄 | 裁投影幕 | 需再次檢查 | 不作個人心得證據 |
| `hello-world-notes/session/2026-10-15/1010-ai-workflow-team/assets/workshop-photo-4.jpg` | Team Workflow | S019–S020 | 小步驟、檢查、Review | 裁投影幕中央 | 需再次檢查 | 流程文字需放大 |
| `hello-world-notes/session/2026-10-15/1115-ai-incident-investigation/assets/workshop-photo-1.jpg` | Incident Investigation | S022 | 人類調查流程 | 裁流程圖主體 | 需再次檢查 | 節點多，適合局部展示 |
| `hello-world-notes/session/2026-10-15/1115-ai-incident-investigation/assets/workshop-photo-3.jpg` | Incident Investigation | S021–S022 | SRE Agent 架構 | 裁架構圖；必要時重繪 | 需再次檢查 | 小字與箭頭需 SVG 補足 |
| `hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image%20copy%206.png` | MCP OAuth Workshop | S023 | Scope 控制讀寫權限 | 原圖可讀則保留，否則重繪 | 未見敏感值 | 流程節點需確認投影尺寸 |
| `hello-world-notes/session/2026-10-15/1600-harness-engineering/assets/workshop-photo-5.jpg` | Harness Engineering | S029–S030 | Prompt／Context／Harness | 裁投影幕中央 | 需再次檢查 | 細字不作唯一證據 |
| `hello-world-notes/session/2026-10-15/1700-lint-architecture-test/assets/workshop-photo-5.jpg` | Lint + Architecture Test | S032–S033 | Agent／Git Hook／CI 防護 | 裁投影幕；局部放大 | 需再次檢查 | 不是本專案 Artifact |

## 禁止直接使用的已知素材

| 原始路徑 | 原因 | 替代方案 |
|---|---|---|
| `hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image.png` | 舊版檢查發現可能包含帳號、IP、UUID、桌面分享資訊或授權操作紀錄 | 使用 `image copy 6.png`；必要時依確認的 Discovery／Scope 流程重繪 SVG |

## 圖片狀態規則

- `READY`：已確認內容、敏感資訊與投影可讀性，可進 HTML QA。
- `NEEDS_CROP`：原檔保留，展示層裁切／校正後再 QA。
- `NEEDS_REVIEW`：尚未完成敏感資訊或投影檢查，不得直接進 HTML。
- `BLOCKED_FOR_DIRECT_USE`：不能直接公開，必須改用安全圖片或來源確認的重繪圖。

## 2026-10-20 照片資料夾補強檢查

本輪逐一盤點 10/14、10/15 各課程照片資料夾，並優先檢查 MCP OAuth Workshop 指定的 03–05：

| 原始圖片路徑 | 課程 | 使用頁面 | 狀態 | 未使用／使用原因 |
|---|---|---|---|---|
| `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/13時00分_AI Agent與MCP安全登入實作工作坊/03_課堂照片.png` | MCP OAuth Workshop | S026（SVG 重繪） | `BLOCKED_FOR_DIRECT_USE`；不再使用舊展示副本 | 原圖含帳號、UUID、登入資訊、Callback／Resource URL；改用不含敏感值的來源確認 SVG。 |
| `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/13時00分_AI Agent與MCP安全登入實作工作坊/04_課堂照片.png` | MCP OAuth Workshop | S027（SVG 重繪） | `BLOCKED_FOR_DIRECT_USE`；不再使用舊展示副本 | 原圖含終端機指令、Client ID／授權 URL、主機資訊與 Token 檔案路徑；改用不含敏感值的來源確認 SVG。 |
| `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/13時00分_AI Agent與MCP安全登入實作工作坊/05_課堂照片.png` | MCP OAuth Workshop | S025 | `READY` | 完整 Scope 讀寫流程；未見帳號、Token、UUID、Email 或外部 IP。保留原比例，使用 `contain`。Browser QA PASS。 |

### 其他資料夾檢查結論

- Structurizr、Event-driven Trading、LLM Wiki、Agent Compliance、FinOps、A2A／x402／AP2、Architecture Judgment、Team Workflow、Incident Investigation、Harness Engineering、Lint + Architecture Test 的照片資料夾均已盤點。
- 本輪未再新增照片頁：現有簡報已使用各課程代表性技術圖片；其餘候選多為重複投影片、會場／講者照片、投影細字不足，或仍需敏感資訊審查。
- MCP 原始 `image.png` 仍不進 HTML；照片資料夾內 01、02、06、07 仍不進 HTML。03、04 的原圖與既有過度遮蔽副本均不進 HTML，S026、S027 改用來源確認的 SVG 重繪；HTML 不引用原圖。

## 2026-10-20 — 新增圖片頁與 36 頁重新編號

| 原始圖片 | 課程 | 使用頁面 | 展示方式 | 安全狀態 | QA |
|---|---|---:|---|---|---|
| `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/13時00分_AI Agent與MCP安全登入實作工作坊/03_課堂照片.png` | MCP OAuth Workshop | S026 | `SOURCE_CONFIRMED_SVG`；舊 `mcp-03-redacted.png` 不再引用 | 原圖 BLOCKED；授權請求畫面以不含帳號／UUID／URL 的 SVG 重繪 | PASS |
| `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/13時00分_AI Agent與MCP安全登入實作工作坊/04_課堂照片.png` | MCP OAuth Workshop | S027 | `SOURCE_CONFIRMED_SVG`；舊 `mcp-04-redacted.png` 不再引用 | 原圖 BLOCKED；CLI 與 Tool Call 以不含路徑／ID／URL 的 SVG 重繪 | PASS |
| `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/16時00分_Harness Engineering與Prompt實務/02_課堂照片.jpg` | Harness Engineering | S031 | 原圖；原比例、`contain` | 已檢查，未見帳號、Token、UUID 或環境識別值 | PASS |

重新編號後，正式播放順序為 S001–S036。原 33 頁 HTML／Preview 已保留於 `presentation-v2/archive-33/`，供追溯使用。

## 2026-10-20 — MCP 圖片重複與脫敏異常修正

| Slide | 來源／主視覺 | 狀態 | 修正理由 |
|---|---|---|---|
| S024 | `SOURCE_CONFIRMED_SVG`：Client／Authorization Server／Resource Server 與 Scope 判斷 | `PASS` | 移除與 S025 高度相似的 Scope 原圖，改以不同重點的責任分界圖。 |
| S025 | `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/13時00分_AI Agent與MCP安全登入實作工作坊/05_課堂照片.png` | `PASS` | 保留唯一安全且具完整技術內容的原始 Scope 流程圖，原比例 `contain`。 |
| S026 | `SOURCE_CONFIRMED_SVG`：授權請求畫面安全重繪，依 03_課堂照片.png | `PASS` | 原圖含帳號、UUID、Callback／Resource URL；舊脫敏副本白區過大，停止引用。 |
| S027 | `SOURCE_CONFIRMED_SVG`：CLI 授權與 MCP Tool Call 安全重繪，依 04_課堂照片.png | `PASS` | 原圖含 Client ID、授權 URL、路徑與 Token 資訊；舊脫敏副本失去展示價值，停止引用。 |

原始 03、04 與 `presentation-v2/assets/redacted/mcp-03-redacted.png`、`mcp-04-redacted.png` 均保留但不再被 S024–S027 HTML 引用；四頁不嵌入敏感原圖或 Base64 資料。

## 2026-10-20 — 移除 S036

S036 已從正式播放清單移除；目前不再產生或引用 `presentation-v2/html/S036.html` 與 `presentation-v2/previews/S036.png`。其餘投影片維持原播放順序與內容。

## 2026-10-20 — MCP 圖片頁改為三張原圖

使用者確認 03、04 為測試環境資料，改回直接展示原始課堂圖片。舊 S027 圖片頁移除，MCP 圖片頁維持三張：

| Slide | 原始圖片 | 展示方式 | 狀態 |
|---|---|---|---|
| S024 | `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/13時00分_AI Agent與MCP安全登入實作工作坊/03_課堂照片.png` | 原圖、`contain` | Browser QA PASS |
| S025 | `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/13時00分_AI Agent與MCP安全登入實作工作坊/04_課堂照片.png` | 原圖、`contain` | Browser QA PASS |
| S026 | `照片整理_2026年10月14日至15日_開發者大會/2026年10月15日/13時00分_AI Agent與MCP安全登入實作工作坊/05_課堂照片.png` | 原圖、`contain` | Browser QA PASS |

本版直接展示測試環境原圖，包含原圖中的測試帳號、UUID、URL、Client ID、路徑與 Token 相關畫面；不再使用 S027 或舊 redacted 圖片頁。


