# 光靠 Prompt 守不住架構：用 Lint 與 Architecture Test 打造 Agentic Coding 防護牆

## 一句話總結

Prompt / AGENTS.md 只是 soft constraint；真正要守住架構，必須把規則做成 Lint、Architecture Test、Git Hook、CI 等可執行 guardrail。

## 核心觀念

### 1. depguard：擋直接依賴

用白名單限制某一層「只能依賴誰」。

例如：

```text
Application
  ↓
Domain

Application
  ✕
Infrastructure / Persistence
```

比黑名單更適合維護架構邊界。

`deny` 的錯誤訊息最好同時告訴 Agent：
- 哪條規則違反
- 正確依賴方向是什麼

讓 Agent 能直接修正。

---

### 2. 不讓 Agent 用 `nolint` 偷繞過

如果允許隨便寫：

```go
//nolint
```

Guardrail 就失效。

做法：
- `nolint` 必須指定 linter
- 必須寫理由
- 例外也要留下證據

---

### 3. Lint 只能看「一條邊」

例如：

```text
application/activity
→ internal/pagination
→ infrastructure/persistence
```

每一段 direct import 可能都合法，
但整條路徑仍然讓 Application 間接依賴 Infrastructure。

所以只靠 depguard 不夠。

---

### 4. Architecture Test：檢查整條依賴路徑

建立 import graph，從 Application 出發搜尋：

```text
Application
→ ...
→ Infrastructure
```

若找到，就輸出完整違規路徑。

重點：

```text
Lint
= 檢查直接依賴

Architecture Test
= 檢查完整 dependency path
```

---

### 5. 檢查器本身也要驗證

Architecture Test 不能只看綠燈。

要確認：

- 合法案例真的會通過
- 違規案例真的會失敗
- 空掃描不能算成功
- 掃描範圍要明確

例如：

- module
- GOOS
- build tags
- generated code
- test packages

---

### 6. Agent 修正要是有限迴圈

```text
Agent 修改
↓
make verify
↓
通過？
├─ Yes → CI
└─ No
    ↓
還有 retry budget？
├─ Yes → 把完整錯誤回給 Agent
└─ No → 停止，交給人工
```

回饋要保留：

- stdout
- stderr
- lint message
- violation path
- failure reason

不能只回傳 `exit code != 0`。

---

### 7. 三層防線

```text
1. Agent 自己跑
   make verify

2. Git Hook
   commit / push 時自動驗證

3. CI + Repository Protection
   Required checks / Review / Merge protection
```

三層最好都呼叫同一個 verification command，避免規則分叉。

## 我最重要的收穫

```text
Rule
≠
Enforcement
```

`AGENTS.md`、Prompt、Coding Rules 只能告訴 Agent 應該怎麼做。

真正可靠的是：

```text
Rule
→ Lint
→ Architecture Test
→ CI Gate
```

也就是：

> 不只是要求 AI 遵守規則，而是讓不符合規則的修改根本不能通過。

## 跟我目前開發方式的關係

Ponytail 現在很多規則仍偏 instruction / reasoning。

下一步可以盤點：

- 哪些規則能變成 Static Check
- 哪些能變成 Architecture Test
- 哪些能進統一 `verify`
- 哪些必須成為 CI Required Check

## 回去可做

- [ ] 找一個現有專案做 Architecture Test POC
- [ ] 盤點 Ponytail 哪些規則可機械驗證
- [ ] 建立統一 `verify` command
- [ ] Codex 修改後固定執行同一套 verification
- [ ] 設定 Agent self-repair retry 上限
- [ ] 評估 CI Required Checks

## 現場素材

- `IMG_7924.jpeg` — depguard 擋直接依賴
- `IMG_7925.jpeg` — 間接依賴繞過 direct lint
- `IMG_7926.jpeg` — Architecture Test 檢查完整路徑
- `IMG_7927.jpeg` — 有限修正迴圈
- `IMG_7928.jpeg` — Agent / Git Hook / CI 三層防線
