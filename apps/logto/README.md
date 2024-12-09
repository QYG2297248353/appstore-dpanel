# Logto

开发者更好的身份基础设施，以及 Auth0 的开源替代方案。

![Logto](https://file.lifebus.top/imgs/logto_cover.png)

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 简介

Logto 是一个开源的身份和访问管理（IAM）平台，旨在简化客户身份和访问管理（CIAM）和员工身份管理。
基于单点登录（SSO）、基于 OIDC 的认证和多租户 SaaS 功能，Logto 提供了一种可扩展、安全且对开发者友好的现代 Web 和移动应用认证管理方式

## 特性

🧑‍💻 全栈式身份解决方案

+ 启用基于 OpenID Connect (OIDC) 的身份验证，使用 Logto SDKs。
+ 支持无密码登录，以及电子邮件、电话号码、用户名、谷歌、Facebook 和其他社交登录方式等多种选项。
+ 提供美观的 UI 组件，具有可定制的 CSS 以满足您的业务需求。

📦 即插即用型基础设施

+ 包含一个可立即使用的管理 API，作为您的身份验证提供者，从而消除了额外实现的需求。
+ 提供无缝集成您的应用程序与 Logto 的 SDK，支持多平台和语言，适用于您的开发环境。
+ 提供可扩展的连接器，可由社区贡献进行扩展，并可通过 SAML、OAuth 和 OIDC 协议进行定制。

💻 企业级解决方案

+ 实现可扩展授权的基于角色的访问控制（RBAC）。
+ 启用用户管理，通过审计日志跟踪与身份相关的活动并维护安全。
+ 支持无需最小编码的单点登录（SSO）和多因素认证（MFA）。
+ 利用Logto 组织轻松构建多租户应用程序。

## 安装说明

### `中央缓存 Redis` 配置

基本格式, 请根据实际情况修改, 遵循 [Redis协议](https://www.iana.org/assignments/uri-schemes/prov/rediss)：

```env
REDIS_URL=redis://:<redis_password>@<redis_host>:<redis_port>
```

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
