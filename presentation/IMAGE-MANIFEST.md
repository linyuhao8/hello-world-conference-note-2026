# HWDC 2026 — Image Manifest

> 只列規劃實際使用的圖片，不複製素材。所有路徑皆為 Repository 相對路徑。`NEEDS_CROP` 表示保留原檔、後續只在展示層裁切或校正；`READY` 表示目前可作主要 evidence。素材總庫盤點為 78 張，以下是本輪預計使用的 16 張。

| Slide ID | Session | Image Path | Image Role | Caption | Status |
|---|---|---|---|---|---|
| S008 | 2026-10-14 / Structurizr × OpenCode | `hello-world-notes/session/2026-10-14/1010-structurizr-opencode/assets/image.png` | Architecture | Workshop 產出的 Toy Preorder Lottery Service Deployment View | READY |
| S009 | 2026-10-14 / LLM Wiki | `hello-world-notes/session/2026-10-14/1330-llm-wiki/assets/workshop-photo-5.jpg` | Diagram | Raw、Wiki、Ops 三層知識治理模型 | NEEDS_CROP |
| S011 | 2026-10-14 / Event-driven Trading | `hello-world-notes/session/2026-10-14/1330-event-driven-trading/assets/workshop-photo-1.jpg` | Evidence | 可重跑、可追查、可接續的 AI 工程工作流提醒 | NEEDS_CROP |
| S015 | 2026-10-14 / Agent Compliance | `hello-world-notes/session/2026-10-14/1415-agent-compliance-skills/assets/workshop-photo-6.jpg` | Diagram | Skill 與 Harness 的執行邊界 | NEEDS_CROP |
| S016 | 2026-10-14 / Agent Compliance | `hello-world-notes/session/2026-10-14/1415-agent-compliance-skills/assets/workshop-photo-9.jpg` | Evidence | 規範、Harness 與人工判斷的三個帶走重點 | NEEDS_CROP |
| S017 | 2026-10-14 / Cloud FinOps | `hello-world-notes/session/2026-10-14/1515-cloud-finops/assets/workshop-photo-2.jpg` | Diagram | FinOps 的 Inform、Optimize、Operate 框架 | NEEDS_CROP |
| S019 | 2026-10-14 / A2A x402 AP2 | `hello-world-notes/session/2026-10-14/1600-agentic-a2a-x402-ap2/assets/workshop-photo-11.jpg` | Diagram | AP2 對 Agent 付款授權的概念圖 | NEEDS_CROP |
| S020 | 2026-10-14 / A2A x402 AP2 | `hello-world-notes/session/2026-10-14/1600-agentic-a2a-x402-ap2/assets/workshop-photo-3.jpg` | Diagram | x402 將付款放回 HTTP 呼叫流程 | NEEDS_CROP |
| S021 | 2026-10-14 / Architecture Judgment | `hello-world-notes/session/2026-10-14/1700-architecture-judgment/assets/workshop-photo-3.jpg` | Evidence | 用三個訊號檢查架構決策是否有效 | NEEDS_CROP |
| S023 | 2026-10-15 / AI Workflow Team | `hello-world-notes/session/2026-10-15/1010-ai-workflow-team/assets/workshop-photo-4.jpg` | Evidence | 把實作拆成可驗證的增量並逐步提交 | NEEDS_CROP |
| S025 | 2026-10-15 / AI Incident Investigation | `hello-world-notes/session/2026-10-15/1115-ai-incident-investigation/assets/workshop-photo-1.jpg` | Context | 人類工程師的告警調查流程 | NEEDS_CROP |
| S026 | 2026-10-15 / AI Incident Investigation | `hello-world-notes/session/2026-10-15/1115-ai-incident-investigation/assets/workshop-photo-3.jpg` | Diagram | SRE Agent 的任務、工具與判斷流程 | NEEDS_CROP |
| S029 | 2026-10-15 / MCP OAuth2 Workshop | `hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image.png` | Diagram | Client、Signet、MCP Server 的 discovery／authorization sequence | BLOCKED_FOR_DIRECT_USE |
| S030 | 2026-10-15 / MCP OAuth2 Workshop | `hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image copy 6.png` | Diagram | scope 控制讀寫權限的流程 | READY |
| S034 | 2026-10-15 / Harness Engineering | `hello-world-notes/session/2026-10-15/1600-harness-engineering/assets/workshop-photo-5.jpg` | Diagram | Prompt、Context、Harness 三層 AI Engineering 心智模型 | NEEDS_CROP |
| S037 | 2026-10-15 / Lint + Architecture Test | `hello-world-notes/session/2026-10-15/1700-lint-architecture-test/assets/workshop-photo-5.jpg` | Diagram | Agent、Git Hook、CI 三層防線 | NEEDS_CROP |

## 不使用或明確無圖的素材

| Session | 判定 | 原因 |
|---|---|---|
| ACP Coding Agent | 無 | `notes.md` 明確說本場資料夾沒有可引用課程圖片；以 HTML／SVG 流程圖規劃。 |
| 其他未列出的 Workshop photos | 不納入本輪 | 多為現場照片或同一組投影片複本；除非 Phase 2 發現能直接承載核心證據，否則不重複使用。 |

## 安全與品質檢查

- 已確認以上 16 個路徑在 Repository 中存在。
- Structurizr 與 MCP 的數位圖目前可作主要視覺；課堂直拍照片多含天花板、觀眾與透視變形，先標 `NEEDS_CROP`。
- MCP 圖片未規劃顯示完整 Token、Cookie、Client Secret 或 Authorization Header；Phase 2 仍需再次逐圖檢查。
- 任何無法讀清的投影片文字，不在簡報中自行補全；必要時改用筆記與 Artifact 重繪。
- 原始檔不修改、不搬移、不複製到 `presentation/`。

## Phase 3 圖片使用規則

- SUMMARY.md 已引用的圖片先作為候選；只有能承載該頁技術證據的圖片才納入 HTML，不為了覆蓋率重複放圖。
- 直拍課堂照片保留原檔，展示層以 CSS crop、局部放大或依據已確認內容重繪 SVG；不修改照片中的文字與數據。
- 照片中的細小文字不作唯一證據，正式技術數字與關係以 notes、README 或可追溯 Artifact 為準。
- 發現帳號、Token、IP、UUID、Email、憑證或桌面資訊時，原圖不得直接進入公開 HTML；優先改用來源可確認的 SVG 重繪。
- 本輪 S009、S011、S015 使用既有技術頁整合圖片，沒有新增附屬圖片頁；S029 維持 `BLOCKED_FOR_DIRECT_USE`，不得直接載入原始圖片。
