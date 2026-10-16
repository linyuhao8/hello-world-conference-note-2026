# 解構 Agentic AI 時代的系統架構：A2A、x402、AP2

- 日期：2026-10-14
- 時間：16:00–16:45
- 講師：蕭兆洋 (Charles Hsiao)
- 地點：F 會議室
- 課程類型：Session

## 官方課程簡介

本場從一個 Agent 的完整旅程出發，介紹 Agent 如何透過 A2A 協商任務、透過 x402 回應付費要求，以及透過 AP2 處理「誰授權 Agent 花錢」的問責問題。重點不是逐條閱讀協定規格，而是理解 Agent 成為交易主體後，系統通訊、身分授權和計費架構會怎麼改變。

## A2A、x402、AP2 白話整理

- **A2A**：讓不同 Agent 找到彼此、溝通任務並合作。
- **x402**：當 API 要收費時，用 HTTP 402 告訴 Agent 需要付款，讓 Agent 可以自動完成小額支付後再取得服務。
- **AP2**：留下可驗證的授權鏈，回答「這筆錢是誰授權 Agent 花的」，方便稽核和追責。

## Ghost Pay 實作情境

官方介紹的 Ghost Pay 是建在 Kubernetes 上的支付基礎設施。它用 Istio mTLS 和 Envoy Lua Filter 做成隱形的支付攔截層；當業務 Agent 收到 402 要求時，由 sidecar 把付款工作交給叢集內的 Paymaster Agent，再由 Facilitator 完成鏈上結算。業務 Pod 不需要改程式，也不需要自己持有代幣支付 Gas。

## 官方資料

- [官方 Session snapshot：5013](../../../../data/sessions/5013.md)
- [官方課程頁面](https://hwdc.ithome.com.tw/2026/session/5013)
- [講者網站](https://www.charles-hsiao.com)

## 我的筆記

- [開始填寫現場筆記](./notes.md)

> 上面的內容是官方課程簡介，不代表已完成的現場筆記。
