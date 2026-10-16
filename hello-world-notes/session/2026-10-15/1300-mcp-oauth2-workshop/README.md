# 讓 AI Agent、MCP Server、CLI 安全登入的實作工作坊

- 日期：2026-10-15
- 時間：13:00–15:00
- 講師：吳柏毅 (appleboy)
- 公司／職位：Mediatek／後端架構工程師
- 地點：605+606 會議室
- 課程類型：Lab

## 官方課程簡介

以 Go 或 Python 完成 MCP Authorization 實作，從未授權的 MCP Server 開始，逐步驗證 OAuth 2.0、PKCE、Token、scope、resource 隔離，最後將入口授權集中到 Kong Gateway。Lab 05 的 Token 撤銷是課後進階選修。

## 官方資料

- [官方 Lab 頁面](https://hwdc.ithome.com.tw/2026/lab/5034)
- [工作坊 GitHub Repository](https://github.com/go-training/mcp-oauth2-workshop)
- [講者：吳柏毅 (appleboy)](../../../../data/speakers/69.md)

## 已安裝內容

完整 repository 位於 [`repo/`](./repo/)。

## 快速開始

```sh
cd repo
cp .env.example .env
chmod 600 .env
```

接著依 README 設定自己的 `OAUTH_CLIENT_ID`，選擇 Go 或 Python 路線，再執行相應的依賴安裝與 Lab 指令。`.env` 尚未建立，避免把個人憑證寫入工作區。

## 我的筆記

- [開始填寫現場筆記](./notes.md)

