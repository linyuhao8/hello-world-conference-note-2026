# HWDC 2026 — 技術收穫與實戰筆記

## 1. 簡報定位

- **形式：** 16:9 HTML Presentation，固定 1920 × 1080，無垂直捲動。
- **語言：** 繁體中文，保留 Technical Terms、API、檔名與程式識別字。
- **主題：** Hello World Dev Conference 2026 — 技術收穫與實戰筆記。
- **核心敘事：** AI 與分散式系統進入工程流程後，可靠性來自邊界、狀態、驗證、觀測與恢復，而不是單一 Prompt 或一次成功的 Demo。
- **本輪範圍：** 只建立規劃、Outline 與圖片 Manifest，不產出逐頁文案、不產出 HTML。

## 2. 目標讀者與技術深度

目標讀者是熟悉 Web、Backend、Cloud 或 DevOps 的工程師與技術主管。簡報不從 OAuth、RAG、C4 或 Event-driven 的基本定義長篇教學，而是用課程中的問題、取捨與可驗證成果建立工程判斷。讀者應能看懂資料流、sequence、dependency path、benchmark 與 CI gate，但不要求知道每個課程的完整產品背景。

深度以「問題 → 候選方案 → 證據 → 限制 → 可移植原則」為單位。實際參與、Repository Artifact、課堂筆記、官方背景與後續建議分層標示，避免把官方簡介或推測寫成已驗證成果。

## 3. Design System

### Canvas

- 1920 × 1080，16:9，固定畫布。
- 投影閱讀優先，標題至少 42px，正文原則上不低於 24px。
- 每頁保留 Section Label、Title、One-line Summary、主要 Visualization、Evidence／Limitation 與 Footer／Page Number；依頁面目的彈性取捨。

### 視覺語言

- shadcn/ui-inspired，但採單一平面構圖，避免大量卡片、Pills、Dashboard 元件感。
- Technical、Editorial、Minimal，使用清楚的 Grid Alignment 與適度留白。
- 圖片是證據或解釋媒介，不是填空裝飾。需要乾淨重繪時，保留原圖作為 evidence，重繪只放在後續 Phase 2／3 設計。

### 色彩與字體

- Dark：`#09090b`、`#18181b`、`#27272a`、`#fafafa`、`#a1a1aa`、`#3f3f46`。
- Light：`#fafafa`、`#18181b`、`#52525b`、`#e4e4e7`。
- 約 80% Dark、20% Light；不使用彩色漸層、霓虹、3D 裝飾或不必要動畫。
- `Inter`、`Noto Sans TC`、`JetBrains Mono`。

### Language & Typography

- 繁體中文是主要敘事語言，負責說明技術概念、工程問題與結論。
- 英文用於正式技術名詞、工具、協定與次要標籤；不為維持科技感而大量使用純英文。
- 重要概念可使用「中文主標 + 英文副標」，首次出現時保留正式英文術語。
- 流程圖與架構圖保留正式元件名稱，但必須提供中文責任說明。
- 不為了雙語而增加冗餘文字；英文輔助文字應以較小字級或次要色階呈現。
- 雙語排版必須優先維持 1920 × 1080 投影閱讀性、換行完整性與版面留白。

## 4. 章節順序與頁數

全套規劃 **44 頁**。頁數依工程問題、證據深度與圖片資訊量決定，不以「每場一頁」或固定 22 頁為限制。

| 章節 | 頁數 | 頁面範圍 | 目的 |
|---|---:|---|---|
| Cover | 1 | S001 | 建立主題與時間軸 |
| Conference Overview | 2 | S002–S003 | 交代兩天、13 場與證據邊界 |
| Engineering Takeaways | 2 | S004–S005 | 提出全場共同工程問題 |
| Architecture as Code | 3 | S006–S008 | Structurizr／C4／DSL／ADR 實作 |
| Knowledge Engineering | 2 | S009–S010 | LLM Wiki 的知識治理與評測 |
| Distributed System Consistency | 4 | S011–S014 | 交易系統的採用、拒絕與對帳 |
| Agent Skills / Compliance | 2 | S015–S016 | Soft Constraint 與執行邊界 |
| FinOps | 2 | S017–S018 | 成本可視性與證據限制 |
| A2A / x402 / AP2 | 2 | S019–S020 | Agent 身分、授權、付款與稽核 |
| Engineering Judgment | 2 | S021–S022 | AI 提案與不可逆決策 |
| Team AI Workflow | 2 | S023–S024 | 個人工作流變成團隊資產 |
| Incident Investigation | 3 | S025–S027 | SRE Agent 的資料流、規則與歷史 |
| MCP OAuth2 | 4 | S028–S031 | Discovery、PKCE、scope、Gateway |
| ACP | 2 | S032–S033 | Session runtime 與協作邊界 |
| Harness Engineering | 3 | S034–S036 | Prompt／Context／Harness 與 recovery |
| Architecture Enforcement | 3 | S037–S039 | Lint、完整 dependency path、CI |
| Cross-session Synthesis | 2 | S040–S041 | 跨場共通模型與對照 |
| Practical Outcomes | 1 | S042 | 可落地的工程工作清單 |
| Future Applications | 1 | S043 | 後續但尚未驗證的延伸方向 |
| Closing | 1 | S044 | 收束為可驗證的工程系統 |

## 13 個課程頁數統計

| 課程 | 頁數 | 頁面 |
|---|---:|---|
| Structurizr × OpenCode | 3 | S006–S008 |
| LLM Wiki | 2 | S009–S010 |
| Event-driven Trading | 4 | S011–S014 |
| Agent Compliance Skills | 2 | S015–S016 |
| Cloud FinOps | 2 | S017–S018 |
| A2A／x402／AP2 | 2 | S019–S020 |
| Architecture Judgment | 2 | S021–S022 |
| AI Workflow Team | 2 | S023–S024 |
| AI Incident Investigation | 3 | S025–S027 |
| MCP OAuth2 Workshop | 4 | S028–S031 |
| ACP Coding Agent | 2 | S032–S033 |
| Harness Engineering | 3 | S034–S036 |
| Lint + Architecture Test | 3 | S037–S039 |

> 以上頁數合計 44 頁，與 `SLIDE-OUTLINE.md` 的 S001–S044 一致。正式製作前仍以逐頁清單為唯一頁碼來源。

## 6. 證據規則

1. **實際筆記：** 使用者在 `notes.md` 留下的見聞、心得、數字與主觀評價。
2. **實作成果：** Repository 可找到的 DSL、ADR、workspace JSON、程式碼、測試、驗證紀錄或圖片。
3. **官方背景：** `README.md`、`data/` snapshot、議程與講師資料，只用於背景與名詞脈絡。
4. **後續建議：** 由上述資料提出的延伸方向，必須明確標成尚未實作或待驗證。

必須保留以下限制：10/14 13:30 的 LLM Wiki 與 Event-driven Trading 時段重疊，不宣稱兩場完整參與；Knowledge Graph Workshop 未參加，不列為成果；Structurizr Workshop 有實作成果；ACP 無課程圖片；FinOps 數字未確認單位、時間範圍與掃描範圍，不換算正式節省金額；benchmark 只描述條件與結果，不推論 production SLA。

## 7. 圖片使用原則

- 優先使用 `notes.md` 已引用圖片、架構圖、sequence、Workshop Artifact、benchmark 或前後比較。
- 每張圖片先確認實際內容、可讀性、傾斜、反光、裁切與敏感資訊，再決定是否使用。
- 直拍投影片通常需要裁切投影區、校正透視並保留原檔；無法可靠讀字時不把它當主要證據。
- 不直接使用含 Token、Cookie、Authorization Header、API Key、Client Secret、帳密的畫面。需要時標成 `NEEDS_REDACTION`。
- 同一張圖片原則上只使用一次。完整規劃見 `IMAGE-MANIFEST.md`。

## 8. HTML 技術實作方向（Phase 3 才執行）

- 每頁獨立 HTML，使用最小必要的 HTML／CSS／SVG，圖片用 Repository 相對路徑。
- 共用 Design System 以 CSS variables、固定 viewport、Grid／Flex 與少量 SVG data flow 實作。
- 技術圖優先以可編輯的 HTML／SVG 重繪，原始投影片照片保留作 evidence 或 context。
- Phase 3 逐頁以瀏覽器 1920 × 1080 截圖檢查文字溢出、圖片載入、字級、排版一致性、技術資料完整性與敏感資訊。
- 本輪不新增框架、爬蟲或產圖程式。

## 9. 後續工作方式

### Phase 2 — Content Design

一次處理指定 Slide ID 或少量連續頁面，輸出 `presentation/content/S001.md` 等檔案。每頁至少包含 Section、Title、Subtitle、Main Message、Slide Copy、Visualization Specification、Image Path、Image Caption、Key Technical Points、Evidence / Limitations、Layout Instructions、Source References。先確認證據層級與圖片狀態，再寫正文。

### Phase 3 — HTML Production

Phase 2 確認後才輸出 `presentation/html/S001.html` 等檔案。每頁沿用本文件的 Design System，圖片路徑可獨立開啟，並以 1920 × 1080 browser screenshot 做版面 QA。不要把 Phase 2 尚未確認的推測寫進 HTML。

## 10. 本輪完成條件

- 13 個課程資料夾全部出現在 Outline。
- 每頁只有一個核心目的，且有來源、視覺、版型與前後敘事關係。
- Manifest 只列真實存在的 Repository 相對路徑，或明確寫無。
- 官方背景、實作成果、筆記心得與後續建議分開。
- 沒有開始逐頁文案或 HTML。
