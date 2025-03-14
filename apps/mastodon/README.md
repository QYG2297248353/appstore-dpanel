# Mastodon (长毛象)

自由开源的去中心化的分布式微博客社交网络

![Mastodon](https://file.lifebus.top/imgs/mastodon_cover.png)

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 简介

Mastodon 是一款基于 ActivityPub 的免费开源社交网络服务器，用户可以关注好友并发现新朋友。在 Mastodon
上，用户可以发布任何他们想要的内容：链接、图片、文本和视频。所有 Mastodon 服务器都可以作为联合网络互操作（一台服务器上的用户可以与另一台服务器上的用户无缝通信，包括实现
ActivityPub 的非 Mastodon 软件！）

## 特征

### 不受供应商限制

可与任何符合要求的平台完全互操作- 不一定是 Mastodon；无论实现 ActivityPub 的是什么，都是社交网络的一部分！了解更多

### 实时、按时间顺序排列的时间线更新

您关注的人的更新会通过 WebSockets 实时显示在 UI 中。还有流水线视图！

### 媒体附件，如图片和短视频

上传和查看更新中附加的图片和 WebM/MP4 视频。没有音轨的视频将被视为 GIF；普通视频将连续循环播放！

### 安全和审核工具

Mastodon 包括私人帖子、锁定帐户、短语过滤、静音、屏蔽和各种其他功能，以及报告和审核系统。了解更多

### OAuth2 和简单的 REST API

Mastodon 充当 OAuth2 提供商，因此第三方应用可以使用 REST 和 Streaming
API。这带来了一个拥有众多选择的丰富应用生态系统！

## 安装说明

> 项目使用 软件版本
>
> Redis 4+
>
> PostgreSQL 12+

### 密钥

您必须提供唯一的加密密钥：`ACTIVE_RECORD_ENCRYPTION_PRIMARY_KEY` `ACTIVE_RECORD_ENCRYPTION_DETERMINISTIC_KEY` `ACTIVE_RECORD_ENCRYPTION_KEY_DERIVATION_SALT`

您可以通过命令：`bin/rails db:encryption:init` 生成。

您也可以使用终端的 `openssl` 命令生成：

```bash
echo "ACTIVE_RECORD_ENCRYPTION_PRIMARY_KEY=$(openssl rand -hex 32)"
echo "ACTIVE_RECORD_ENCRYPTION_DETERMINISTIC_KEY=$(openssl rand -hex 32)"
echo "ACTIVE_RECORD_ENCRYPTION_KEY_DERIVATION_SALT=$(openssl rand -hex 32)"
```

### 其他密钥

安装后，进入安装目录，查看 `env/mastodon.env` 文件，里面有其他密钥的配置说明，在您有需要的情况下。

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
