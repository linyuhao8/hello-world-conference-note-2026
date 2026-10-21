# HWDC 2026 — Phase 2 Final Review

審查範圍：S001–S044 內容設計、主視覺規格、圖片引用、證據分級與 HTML 可實作性。

本文件只記錄審查結果；未修改任何 `presentation/content/S001.md`–`S044.md`、Phase 1 規劃或原始圖片。

## 1. Executive Summary

Phase 2 的 44 個 Slide ID 均已有獨立內容文件，且均包含正式文案、Visualization Specification、Image Specification、Evidence / Limitations 與 Source References。整體敘事可進入 HTML Production 的準備階段，但不是無條件的 READY：S029 的原始截圖不得直接放入公開簡報，必須以已確認的 HTTP Discovery Sequence 重繪；另有數頁需在 HTML 製作前確認文字密度與圖片使用策略。

| 結果 | 數量 | 說明 |
| --- | ---: | --- |
| PASS | 38 | 內容、來源與主視覺規格足以進入製作；圖片裁切等工作可在 HTML 階段處理。 |
| NEEDS_FIX | 5 | 有文字密度、圖片清單一致性或輕微文案問題；不涉及整體敘事阻斷。 |
| BLOCKED | 1 | S029 原始圖片含敏感畫面，不能直接使用；需改用重繪 SVG 或已完整脫敏副本。 |

最重要的風險是圖片安全與證據邊界，而不是頁數不足。Structurizr `inspection.error: 8`、Workshop OAuth2 驗證、Trading Benchmark、FinOps ROI，以及 ACP、Compliance、Incident、Harness 的 Runtime 狀態均已保留為限制，不能在 HTML 階段被簡化成 Production 結果。

**結論：44 頁可以開始 HTML Production 的版型與非 S029 頁面；正式匯出前必須完成 S029 圖片替換，並處理下列 NEEDS_FIX 項目。**

## 2. Slide Review Matrix

| Slide | Content | Technical | Evidence | Image | Density | HTML Readiness | Status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| S001 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S002 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S003 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S004 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S005 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S006 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S007 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S008 | PASS | PASS | PASS with limitation | Crop / readable after placement | PASS | Ready with crop | PASS |
| S009 | PASS | PASS | PASS with 11/11 limitation | Crop; text must not carry photo | PASS | Ready with crop | PASS |
| S010 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S011 | PASS | PASS | PASS with Benchmark limitation | Crop; do not imply Production Capacity | PASS | Ready with crop | PASS |
| S012 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S013 | PASS | PASS | PASS with 800 orders/s limitation | N/A | PASS | Ready | PASS |
| S014 | PASS | PASS | PASS with test-scope limitation | N/A | PASS | Ready | PASS |
| S015 | PASS | PASS | PASS with no local Policy Artifact | Crop | PASS | Ready with crop | PASS |
| S016 | PASS | PASS | PASS with proposal boundary | Crop; projector glare | PASS | Ready with crop | PASS |
| S017 | PASS | PASS | PASS with ROI limitation | Crop; slide text is small | PASS | Ready with crop | PASS |
| S018 | PASS | PASS | PASS with unit/scope limitation | N/A | PASS | Ready | PASS |
| S019 | PASS | PASS | PASS with external/demo boundary | Crop | PASS | Ready with crop | PASS |
| S020 | PASS | PASS | PASS with Workshop boundary | Crop | NEEDS shortening beside diagram | Needs density pass | NEEDS_FIX |
| S021 | PASS | PASS | PASS with judgment boundary | Crop; perspective correction | PASS | Ready with crop | PASS |
| S022 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S023 | PASS | PASS | PASS with workflow-scope boundary | Crop | PASS | Ready with crop | PASS |
| S024 | PASS | PASS | PASS with external/demo boundary | N/A | PASS | Ready | PASS |
| S025 | PASS | PASS | PASS with incomplete Runtime evidence | Crop | PASS | Ready with crop | PASS |
| S026 | PASS | PASS | PASS with design-vs-runtime boundary | Crop | PASS | Ready with crop | PASS |
| S027 | PASS | PASS | PASS with incomplete Runtime evidence | N/A | PASS | Ready | PASS |
| S028 | PASS | PASS | PASS | N/A | PASS | Ready | PASS |
| S029 | PASS | PASS | PASS for workshop scope | **Blocked for direct use** | PASS | Blocked until redraw | BLOCKED |
| S030 | PASS | PASS | PASS for workshop scope | Crop; remove viewer chrome | PASS | Ready after crop | PASS |
| S031 | PASS | PASS | PASS with Gateway/Workshop boundary | N/A | Watch text around sequence | Ready with layout check | PASS |
| S032 | PASS | PASS | PASS with ACP/OpenAB limitation | N/A | PASS | Ready | PASS |
| S033 | PASS | PASS | PASS with no local Runtime | N/A | PASS | Ready | PASS |
| S034 | PASS | PASS | PASS with Harness limitation | Crop; projector text small | PASS | Ready with crop | PASS |
| S035 | PASS | PASS | PASS with no full Recovery Runtime | N/A | PASS | Ready | PASS |
| S036 | PASS | PASS | PASS with no full Multi-Agent Runtime | N/A | PASS | Ready | PASS |
| S037 | PASS | PASS | PASS with future POC boundary | Crop | PASS | Ready with crop | PASS |
| S038 | PASS | PASS | PASS with no local test artifact | N/A | PASS | Ready | PASS |
| S039 | PASS | PASS | PASS with future-enforcement boundary | Duplicate crop image / manifest gap | PASS | Needs image decision | NEEDS_FIX |
| S040 | PASS | PASS | PASS with synthesis boundary | N/A | PASS | Ready | PASS |
| S041 | PASS | PASS | PASS; no score claimed | N/A | NEEDS table and wording trim | Needs density/text pass | NEEDS_FIX |
| S042 | PASS | PASS | PASS with evidence boundary | N/A | NEEDS reduce worklist labels | Needs density pass | NEEDS_FIX |
| S043 | PASS | PASS | PASS; all future directions marked | N/A | NEEDS reduce six-row list | Needs density pass | NEEDS_FIX |
| S044 | PASS | PASS | PASS with closing limitations | N/A | PASS | Ready | PASS |

## 3. Blocking Issues

### B-001 — S029 原始截圖不能直接進入 HTML

- 路徑：`hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image.png`
- 實際檢查結果：圖片是 Signet / MCP Workshop 的操作截圖，畫面含可識別帳號、網路資訊、識別值與桌面分享提示。
- 風險：即使在 HTML 上疊加遮罩，原始圖片仍可能被取出；不應直接嵌入公開簡報。
- 必要處理：使用來源可確認的 HTTP Discovery Sequence 重繪 SVG，或使用已完整檢查且不含敏感資料的衍生副本。不要將原圖中的敏感值轉錄至文案。
- 影響：只阻擋 S029 的原圖使用，不阻擋其技術敘事本身。

## 4. Non-blocking Issues

- 多數 Workshop 照片是直幅 2880×3840，適合保留為現場證據，但應在 HTML 階段裁成 16:9 主體；不能依賴整張照片中的投影文字作為主要技術文字。
- S008 的 Structurizr 圖可直接作為主視覺，但應裁掉左側導覽與上下非主體區域，並以文案再次明確標示「架構模型，不等於 AWS Runtime」。
- S030 的 `image copy 6.png` 可用，但應裁掉檢視器控制列與周邊留白。
- S039 與 S037 使用同一張 Lint 圖片；建議 S037 保留照片作為現場證據，S039 改用可重繪的三道防線 SVG，避免同圖重複及清單未登錄。
- S041 有一處文字使用簡體「benchmark 条件」，HTML 製作前應統一為繁體「benchmark 條件」。
- S020、S041、S042、S043 的文字已具備內容，但應優先讓圖形或矩陣成為主體，縮短旁側說明；不要用過小字級補回所有細節。

## 5. Cross-slide Issues

### 技術名詞與責任

- C4、Structurizr DSL、Container View、Deployment View 與 ADR 的分層在 S008、S037–S039 的敘事中基本一致。S008 的 Deployment View 必須持續被描述為架構模型，不得改寫成已部署 AWS Production。
- S028–S031 的 OAuth2 / MCP 敘事是合理承接：三角色與 Discovery → Authorization Code + PKCE / Callback → Token / Scope / Audience → Gateway 與 Resource Server 授權。應維持「登入成功不等於可操作所有資源」的區分。
- S025–S027 由 Incident Investigation 的現象、SRE Agent 設計到回復與驗證，屬必要承接，不是重複介紹。
- S037–S039 由軟性 Prompt / `AGENTS.md` 規範進入 Lint、Architecture Test、Git Hook 與 CI Enforcement，屬實作深化；但 S039 不應再次使用 S037 的同一照片作為主要證據。

### 重複檢查

- A（必要承接）：S004 與 S034 都談 Prompt / Context / Harness，但前者是責任分界，後者進入 Harness 的執行、觀測與 Recovery。
- A（必要承接）：S015–S016 從 Compliance 的責任與 Tool Call 邊界延伸到操作流程。
- A（必要承接）：S040–S044 對前面案例做跨課程整合，不是重新逐課程摘要。
- C（不必要重複）：目前未發現兩頁實際上完全替代彼此的主要技術訊息。唯一明顯的視覺重複是 S037 / S039 同一張照片，已列為非阻擋修正。

### 證據分級

以下限制在內容中應保持原樣，不得在製作時省略：

- Structurizr `inspection.error: 8` 尚未釐清；DSL 與 workspace JSON 不是 AWS Production Runtime 證據。
- LLM Wiki 的 11/11 只屬特定內容集與流程結果，不是通用準確率。
- Event-driven Trading 的 Benchmark、192k orders、96k trades 與 800 orders/s 均必須保留其測試或案例範圍；800 orders/s 未通過效能門檻，不能稱為 Production Capacity。
- FinOps 節省數字缺少已確認的單位、期間、基準與 ROI 範圍。
- Agent Payment 未完成本地 Runtime 驗證；Compliance 沒有本地可重跑 Policy Artifact；Incident Investigation、ACP/OpenAB、Harness/Multi-Agent/Recovery 也沒有完整本地 Runtime 證據。
- Lint / Architecture Test 的主要內容是方法與未來 POC 方向，不能寫成已存在的本地 CI 結果。

## 6. Image Review

所有下列圖片均已確認檔案存在並實際開啟檢查。原始圖片未修改。

| 使用頁面 | 原始路徑 | 實際檢查與建議 | 敏感資訊風險 | HTML 狀態 |
| --- | --- | --- | --- | --- |
| S008 | `hello-world-notes/session/2026-10-14/1010-structurizr-opencode/assets/image.png` | Digital Structurizr 截圖；主圖清楚，但應裁掉導覽列與非主體區域。 | 未見帳號、Token 或憑證；含公開/課程架構名稱。 | 可用，需裁切 |
| S009 | `hello-world-notes/session/2026-10-14/1330-llm-wiki/assets/workshop-photo-5.jpg` | 直幅現場照；中央投影可辨識，完整照片不適合 16:9，應裁投影與講者。 | 未見帳號或憑證；含公開活動品牌。 | 可用，需裁切 |
| S011 | `hello-world-notes/session/2026-10-14/1330-event-driven-trading/assets/workshop-photo-1.jpg` | 直幅投影特寫；投影文字有反光與邊緣截斷，保留作氛圍/證據，不作細字主圖。 | 畫面可見公開 Repository URL；不應再放大或轉錄非必要資訊。 | 可用，需裁切 |
| S015 | `hello-world-notes/session/2026-10-14/1415-agent-compliance-skills/assets/workshop-photo-6.jpg` | 投影內容可辨識但有傾斜、色偏與上方天花板；裁投影區並做透視校正。 | 未見帳號、Token 或憑證；含公開品牌。 | 可用，需裁切/校正 |
| S016 | `hello-world-notes/session/2026-10-14/1415-agent-compliance-skills/assets/workshop-photo-9.jpg` | 直幅結論頁；投影內容適合作為現場背景，不適合全圖閱讀。 | 未見敏感值；含公開品牌。 | 可用，需裁切 |
| S017 | `hello-world-notes/session/2026-10-14/1515-cloud-finops/assets/workshop-photo-2.jpg` | 投影頁文字偏小；裁出投影主體，必要時旁側以 HTML 重繪數據。 | 未見帳單帳號、金額明細或憑證。 | 可用，需裁切 |
| S019 | `hello-world-notes/session/2026-10-14/1600-agentic-a2a-x402-ap2/assets/workshop-photo-11.jpg` | 直幅現場照；保留投影與講者區域，避免將投影小字當作唯一證據。 | 未見帳號、Token 或憑證；含公開品牌/標誌。 | 可用，需裁切 |
| S020 | `hello-world-notes/session/2026-10-14/1600-agentic-a2a-x402-ap2/assets/workshop-photo-3.jpg` | 直幅投影照片；建議裁切投影主體，技術比較由 SVG/HTML 重繪。 | 未見敏感值。 | 可用，需裁切 |
| S021 | `hello-world-notes/session/2026-10-14/1700-architecture-judgment/assets/workshop-photo-3.jpg` | 直幅投影；需裁切投影、校正透視，避免反光區覆蓋重點。 | 未見敏感值。 | 可用，需裁切/校正 |
| S023 | `hello-world-notes/session/2026-10-14/1010-ai-workflow-team/assets/workshop-photo-4.jpg` | 直幅現場照；保留投影與講者，文字細節由頁面 SVG 重繪。 | 未見敏感值。 | 可用，需裁切 |
| S025 | `hello-world-notes/session/2026-10-15/1115-ai-incident-investigation/assets/workshop-photo-1.jpg` | 直幅投影照；裁切主體並避免把現場投影誤作 Runtime 證據。 | 未見敏感值。 | 可用，需裁切 |
| S026 | `hello-world-notes/session/2026-10-15/1115-ai-incident-investigation/assets/workshop-photo-3.jpg` | 直幅架構投影；投影文字偏小，主架構應以 SVG 重繪。 | 未見敏感值。 | 可用，需裁切 |
| S029 | `hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image.png` | Signet/MCP 操作截圖；技術流程可辨識，但不適合公開直接嵌入。 | **含可識別帳號、網路資訊、識別值與桌面提示。** 報告不抄錄敏感值。 | **BLOCKED_FOR_DIRECT_USE** |
| S030 | `hello-world-notes/session/2026-10-15/1300-mcp-oauth2-workshop/assets/image copy 6.png` | Digital sequence diagram；內容清楚，裁掉檢視器控制列與周邊留白。 | 未見帳號、Token 或憑證。 | 可用，需裁切 |
| S034 | `hello-world-notes/session/2026-10-15/1600-harness-engineering/assets/workshop-photo-5.jpg` | 直幅投影照；有色光與傾斜，裁出投影區並校正；細節重繪。 | 未見敏感值。 | 可用，需裁切/校正 |
| S037 / S039 | `hello-world-notes/session/2026-10-15/1700-lint-architecture-test/assets/workshop-photo-5.jpg` | 直幅三層防線照片；適合 S037 作現場證據。S039 建議改用 SVG，避免同圖重複。 | 未見敏感值。 | S037 可用需裁切；S039 建議不用原圖 |

### 圖片清單差異

- `IMAGE-MANIFEST.md` 將 S029 標為 `READY`，但實際檢查結果是 `BLOCKED_FOR_DIRECT_USE`；Phase 3 必須以實際安全檢查為準。
- S039 的內容文件引用與 S037 相同圖片，但 Image Manifest 沒有獨立列出 S039；應在製作時選擇 SVG 或明確標示共用影像，不應默默複製。

## 7. Phase 3 Entry Gate

### MUST FIX

1. S029 不得直接嵌入原始 `image.png`；以來源可確認內容重繪 HTTP Discovery Sequence，並保留 401 Challenge、Metadata Discovery、Authorization / Resource Server 邊界的正確關係。
2. S041 將「benchmark 条件」統一為繁體，並確認矩陣不因縮小字級而失去投影可讀性。
3. S020、S041、S042、S043 在進入最終匯出前完成一次投影密度檢查；若主視覺與文字無法同時閱讀，優先刪減文字，不縮小字級。
4. S039 決定是否改用 SVG；若保留照片，需在圖片清單中補上使用關係並避免與 S037 形成重複主視覺。

### CAN FIX DURING HTML

- 直幅 Workshop 照片的 16:9 裁切、透視校正、亮度與色偏調整。
- S008、S030 之類數位截圖的導覽列、檢視器控制列與周邊留白裁切。
- 將投影照片中的細小技術文字重繪成 HTML/SVG；照片只保留現場證據與視覺語境。
- 依既有 shadcn/ui-inspired、黑灰白、Technical / Minimal 設計系統調整留白、字級與圖文比例。

### INFORMATIONAL

- 不應把 Structurizr、MCP OAuth2、Trading Benchmark 或任何 Workshop Artifact 改寫成正式 Production Runtime 證據。
- `structurizr.inspection.error: 8` 仍是待釐清狀態，不應在版面中推導錯誤原因。
- Lint、Architecture Test、ACP、Harness、Multi-Agent、Recovery 與 Agent Payment 的未驗證部分可作為 POC / 後續方向，但不能標記為已完成。

## 8. 最終判定

- **44 頁是否可開始 HTML Production？** 可以有條件開始；先遵守 S029 原圖禁用規則，並將四頁密度/文案問題列入製作前修正。
- **有幾頁必須先修正？** 1 頁是直接使用層級的阻擋頁（S029）；5 頁需先做非阻擋修正（S020、S039、S041、S042、S043）。
- **哪些圖片不能直接使用？** S029 原始 `image.png` 不能直接使用；S039 不建議重複直接使用 S037 的現場照片。其餘已選圖片可在裁切/透視校正後使用，S011 的公開 Repository URL 不應被額外轉錄或放大。
- **是否需要調整總頁數？** 目前不需要。S020、S041–S043 應先做密度檢查；若實際 HTML 仍無法投影閱讀，才考慮拆頁，不在本輪改動頁數規劃。
- **第一張建議進入 HTML 的 Slide ID？** S001。它不依賴待處理圖片，也能先驗證全域畫布、字級、黑灰白色系與 16:9 基礎元件。

## 審查依據

- `presentation/PRESENTATION-PLAN.md`
- `presentation/SLIDE-OUTLINE.md`
- `presentation/IMAGE-MANIFEST.md`
- `presentation/content/S001.md`–`presentation/content/S044.md`
- `SUMMARY.md`
- 各課程 `README.md`、`notes.md`、`assets/` 與可追溯的 Structurizr / MCP OAuth2 Artifact
