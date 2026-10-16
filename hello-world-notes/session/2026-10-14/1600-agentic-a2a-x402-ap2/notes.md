# A2A、x402、AP2、Ghost Pay：新手版筆記

這場其實是在講一個很實際的問題：

> 如果未來 AI Agent 不只是回答問題，而是真的能自己找服務、呼叫 API、買資料、花公司的錢，那系統要怎麼讓它「會合作、會付款、但又不能亂花錢」？

可以把整套技術想成：

```text
A2A  = Agent 怎麼跟別人合作
x402 = Agent 怎麼付款
AP2  = 誰授權 Agent 付款
Ghost Pay = 怎麼把付款這件事藏到基礎設施裡，自動完成
```

---

## 為什麼需要這些技術？

現在很多 Agent 還是這樣：

```text
人
↓
叫 AI 做事
↓
AI 呼叫已經準備好的 API
↓
完成
```

但如果 Agent 要真的「自主工作」，很快就會遇到：

```text
Agent 要找另一個 Agent 幫忙
Agent 做到一半缺資料
Agent 要呼叫一個付費 API
Agent 要花錢
公司要限制它最多能花多少
之後還要查：這筆錢到底是誰授權的？
```

所以只靠 Prompt 已經不夠，需要真正的系統協定與權限設計。

---

## 實際案例：AI Agent 自己購買資安情報

假設公司有一個：

```text
Security Agent
```

它每天負責找最新漏洞情報。

以前可能要：

```text
工程師先申請帳號
↓
綁信用卡
↓
拿 API Key
↓
把 API Key 放進系統
↓
Agent 才能查付費資料
```

未來希望變成：

```text
Security Agent
↓
發現某個外部 API 有需要的漏洞情報
↓
呼叫 API
↓
API 回覆：這份資料要付費
↓
Agent 自動完成付款
↓
拿到資料
↓
繼續分析
```

問題是：

> Agent 可以自己付錢，那誰允許它付？
>
> 可以花多少？
>
> 可以付給誰？
>
> 如果出問題，怎麼追查？

這就是 A2A、x402、AP2、Ghost Pay 分別要解決的問題。

---

## A2A：Agent 怎麼跟其他 Agent 合作

A2A 可以理解成：

> 給 Agent 一套「工作交接」的共同語言。

因為 Agent 做事情不像一般 API 一次 Request / Response 就完成。

例如：

```text
使用者：
幫我寫一個網站爬蟲
↓
Agent 開始工作
↓
Agent 發現：
「你沒有給我要爬的網址」
↓
任務變成 input-required
↓
使用者補 URL
↓
Agent 繼續工作
↓
完成
```

所以 A2A 重點不是聊天，而是：

```text
誰在做任務
現在做到哪裡
缺什麼資料
什麼時候完成
產出了什麼
```

### 能幹嘛？

例如：

```text
PM Agent
↓
交給 Coding Agent 實作
↓
Coding Agent 發現缺規格
↓
回報 input-required
↓
Requirement Agent 補資料
↓
Coding Agent 繼續
```

---

## x402：Agent 遇到付費 API 時怎麼付款

x402 的概念非常直覺：

> 利用 HTTP 原本就有的 `402 Payment Required`，把付款直接放進 API 呼叫流程。

流程：

```text
Agent
↓
呼叫付費 API
↓
Server 回 402 Payment Required
↓
告訴 Agent：要付多少
↓
Agent 簽署付款
↓
付款驗證成功
↓
Server 回 200 + 資料
```

簡化就是：

```text
Request
↓
402 要付錢
↓
付款
↓
200 拿資料
```

### 能幹嘛？

例如 Security Agent 想買一份漏洞情報：

```text
Security Agent
↓
GET /premium-vulnerability-report
↓
402：需要付款 1 USDC
↓
Agent 完成付款
↓
200：取得漏洞情報
```

不用人工先去網站：

```text
註冊帳號
綁卡
買方案
複製 API Key
```

Agent 可以在使用服務的當下直接完成付款。

---

## AP2：Agent 有能力付款，不代表它有權付款

x402 解決：

```text
怎麼付錢？
```

AP2 解決：

```text
誰允許你付這筆錢？
```

假設你跟 Agent 說：

```text
幫我找最新的資安情報
```

不能因此代表：

```text
你可以無限刷公司的錢
```

所以 AP2 會先建立一份「授權」。

例如：

```text
Security Agent 可以：

✓ 購買資安情報
✓ 每次最多 5 美元
✓ 一天最多 50 美元
✓ 只能跟指定供應商交易

✗ 不能買其他東西
✗ 不能超過預算
```

Agent 真正付款時，就要證明：

```text
這筆交易
↓
符合原本授權
```

### 能幹嘛？

讓公司事後可以回答：

```text
誰授權？
Agent 被授權做什麼？
最多可以花多少？
最後實際買了什麼？
花了多少？
```

所以 AP2 比較像：

> Agent 的「委託書 + 預算限制 + 可追蹤證明」。

---

## Ghost Pay：讓業務 Agent 根本不用懂付款

講者實作的 Ghost Pay 更進一步。

一般來說，Agent 程式可能要自己寫：

```text
如果收到 402
→ 處理付款
→ 簽名
→ 再送 Request
```

Ghost Pay 希望變成：

```text
Agent 只負責正常呼叫 API
```

付款全部交給 Kubernetes 基礎設施。

流程：

```text
Business Agent
↓
呼叫付費 API
↓
收到 HTTP 402
↓
Istio / Envoy 自動攔截
↓
Ghost Paymaster 幫忙簽付款
↓
Facilitator 完成付款
↓
Agent 最後直接拿到資料
```

對 Business Agent 而言：

```text
我只是呼叫 API
```

它甚至不一定知道中間發生付款。

### 為什麼要這樣？

因為不希望每一個 Agent 都：

```text
自己存私鑰
自己寫支付程式
自己處理 Blockchain
自己做預算管理
```

而是統一放在：

```text
Infrastructure Layer
```

就像現在很多系統把：

```text
mTLS
Routing
Retry
Observability
```

交給 Service Mesh，而不是每個 Application 自己寫。

Ghost Pay 想把：

```text
Payment
```

也變成同樣的基礎設施能力。

---

## 最後把四個放在一起

以「Security Agent 自己買漏洞情報」為例：

```text
公司 / 使用者
↓
AP2
先規定：
「可以買資安情報，一天最多 50 美元」
↓
Security Agent
↓
A2A
和其他 Agent / Service 協作
↓
呼叫付費漏洞情報 API
↓
API 回 HTTP 402
↓
Ghost Pay
自動攔截付款需求
↓
x402
完成簽署、驗證、付款
↓
API 回 200
↓
Security Agent 拿到漏洞情報
↓
公司仍可以查：
誰授權、花多少、買什麼
```

---

## 我真正要記住的重點

不是「AI 可以用區塊鏈付款」。

而是：

> 當 Agent 真的開始代表人或公司做事，系統就必須把 Agent 當成一個真正的系統角色來管理。

也就是 Agent 未來可能需要：

```text
Identity      我是誰？
Authorization 我可以做什麼？
Budget        我可以花多少？
Payment       我要怎麼付？
Audit         我剛剛到底做了什麼？
```

最簡單記法：

```text
A2A       = Agent 怎麼合作
x402      = Agent 怎麼付款
AP2       = Agent 為什麼有權付款
Ghost Pay = 讓付款自動在基礎設施完成
```
