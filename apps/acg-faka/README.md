# 异次元店铺系统V3

二次元发卡系统

![异次元店铺系统](https://file.lifebus.top/imgs/acg_faka_cover.png)

异次元店铺系统乃荔枝店铺系统3.0完全从0代码的重构版本，原生php开发，数据库底层使用Eloquent
ORM，模板渲染使用Smarty3.1以及PHP原生渲染，会话保持全程使用session。

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 特性

+ 支付系统，拥有强悍的插件扩展能力，现目今已经支持全网任意平台，任意支付渠道。
+ 云更新，如果系统升级新版本，你无需进行繁琐操作，只需要在你的店铺后台就可以无缝完成升级。
+ 商品销售，支持商品配图、会员价、游客价、邮件通知、卡密预选（用户可以预选自己想购买的那个账号或者卡号）、API对接、强制登录购买、强悍的自定义控件功能、限时秒杀、批发优惠、优惠卷、等众多功能。
+ 分站系统，前台用户可以开通分站，分站可以独立运行，也可以卖主站商品，有点类似商业店铺了。
+ 会员系统，会员/商户融为一体，支持会员等级，以及商户等级完全自定义，以及商品可自定义会员等级对应价格。
+ 推广/代理系统，拥有三级分销返佣功能，注册账号即实现自动发展下级。
+ 共享店铺系统，可以在后台直接对接别人的店铺，通过扣除余额来进行无感知进货。
+ 应用商店，拥有众多插件以及模板，让你的店铺变得格外强大。
+ 界面美观，完美支持PC和手机，真正的内外二次元文化。
+ 强悍的扩展能力，你可以通过本程序在几分钟之内快速的实现你任意想实现的在线购物功能，例子如下：
    + 游戏方面，物品购买即时到玩家背包
    + 商业软件余额充值
    + 商业软件自动授权
    + 论坛/社区VIP自动开通
    + 只要你想得到，没有做不到。

## 环境说明

+ PHP 8.0+ (推荐使用PHP8.0)
+ MySQL 5.7+ (推荐使用MySQL8.0)

请自行安装 MySQL 并创建数据库，配置用户名和密码。

## 安装说明

> 首次启动将会检查环境，如果环境不满足要求将会提示错误信息。
>
> 第二步将会检查数据库连接，如果数据库连接失败将会提示错误信息。
>
> 第三步将会进行程序安装。

### 数据库填写

数据库主机端口非 3306 时，请按照以下格式填写：
`127.0.0.1:3306`

## 使用说明

> 管理员后台地址：`/admin.php`

### 支付配置

进入`支付管理`，在`支付插件`中点击`获取更多插件`，搜索 `支付宝` 等关键词，进行安装，然后进入支付配置，填写支付宝的相关配置，保存即可。

进入`支付管理`，在`支付接口` 中点击`添加支付接口`，选择支付插件，填写相关配置，保存即可。默认安装会存在一些不可用支付接口配置，删除即可，不影响使用。

余额支付接口是系统默认的支付接口，不可删除，如果你的店铺需要余额支付，请确保余额支付接口是启用状态。

## 版本计划

| 版本  | 状态   | 积极支持截止时间   | 安全维护截止时间   | 发布或预计发布时间  |
|-----|------|------------|------------|------------|
| 4.0 | 公测中  | -          | -          | 2024-10-18 |
| 3.0 | 安全支持 | 2024-08-20 | 长期         | 2022-06-20 |
| 2.0 | 停止维护 | 2020-07-21 | 2020-12-31 | 2020-07-21 |
| 1.0 | 停止维护 | 2020-07-17 | 2020-12-31 | 2020-07-17 |

- 积极支持将包含常规迭代周期的 BUG 修复、安全问题修复、功能迭代和功能新增；
- 安全维护仅包含安全问题的修复；
- 停止维护状态的版本将不会再进行任何的代码变更，请尽快根据升级指南升级到最新的版本以便得到更好的支持；

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
