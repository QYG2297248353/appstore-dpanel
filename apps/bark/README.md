# Bark

一款注重隐私、安全可控的自定义通知推送工具。

![Bark](https://file.lifebus.top/imgs/bark_logo.png)

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 特性

+ 免费、轻量！简单调用接口即可给自己的iPhone发送推送。
+ 依赖苹果APNs，及时、稳定、可靠
+ 不会消耗设备的电量， 基于系统推送服务与推送扩展，APP本体并不需要运行。
+ 隐私安全，可以通过一些方式确保包含作者本人在内的所有人都无法窃取你的隐私。

## 安装说明

### `数据库链接` 配置

MySQL DSN 数据库链接

格式：

```shell
user:pass@tcp(host)/dbname

# 例如
root:123456@tcp(127.0.0.1:3306)/bark
```

#### 参数说明

| 参数     | 说明     |
|--------|--------|
| user   | 数据库用户名 |
| pass   | 数据库密码  |
| host   | 数据库地址  |
| dbname | 数据库名称  |

使用其他端口时 `host` 格式为 `host:port`

## [URL格式](https://bark.day.app/#/tutorial?id=url格式)

URL由推送key、参数 title、参数 body 组成。有下面两种组合方式

#### 服务基础验证

可选项，验证方式为 `Basic`，具体格式为 `Basic base64(username:password)`，其中 `base64(username:password)`
为 `username:password` 的 `base64` 编码结果。

+ 用户名 (服务基础验证)
+ 密码 (服务基础验证)

```
/:key/:body 
/:key/:title/:body 
```

## [请求方式](https://bark.day.app/#/tutorial?id=请求方式)

##### [GET 请求参数拼接在 URL 后面，例如：](https://bark.day.app/#/tutorial?id=get-请求参数拼接在-url-后面，例如：)

```sh
curl https://api.day.app/your_key/推送内容?group=分组&copy=复制
```

*手动拼接参数到URL上时，请注意URL编码问题，可以参考阅读[常见问题：URL编码](https://bark.day.app/#/faq?id=推送特殊字符导致推送失败，比如-推送内容包含链接，或推送异常-比如-变成空格)*

##### [POST 请求参数放在请求体中，例如：](https://bark.day.app/#/tutorial?id=post-请求参数放在请求体中，例如：)

```sh
curl -X POST https://api.day.app/your_key \
     -d'body=推送内容&group=分组&copy=复制'
```

##### [POST 请求支持JSON，例如：](https://bark.day.app/#/tutorial?id=post-请求支持json，例如：)

```sh
curl -X "POST" "https://api.day.app/your_key" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -d $'{
  "body": "Test Bark Server",
  "title": "Test Title",
  "badge": 1,
  "category": "myNotificationCategory",
  "sound": "minuet.caf",
  "icon": "https://day.app/assets/images/avatar.jpg",
  "group": "test",
  "url": "https://mritd.com"
}'
```

##### [JSON 请求 key 可以放进请求体中,URL 路径须为 /push，例如](https://bark.day.app/#/tutorial?id=json-请求-key-可以放进请求体中url-路径须为-push，例如)

```sh
curl -X "POST" "https://api.day.app/push" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -d $'{
  "body": "Test Bark Server",
  "title": "Test Title",
  "device_key": "your_key"
}'
```

## [请求参数](https://bark.day.app/#/tutorial?id=请求参数)

支持的参数列表，具体效果可在APP内预览。

| 参数        | 说明                                                                                          |
|-----------|---------------------------------------------------------------------------------------------|
| title     | 推送标题                                                                                        |
| body      | 推送内容                                                                                        |
| level     | 推送中断级别。 active：默认值，系统会立即亮屏显示通知 timeSensitive：时效性通知，可在专注状态下显示通知。 passive：仅将通知添加到通知列表，不会亮屏提醒。 |
| badge     | 推送角标，可以是任意数字                                                                                |
| autoCopy  | iOS14.5以下自动复制推送内容，iOS14.5以上需手动长按推送或下拉推送                                                     |
| copy      | 复制推送时，指定复制的内容，不传此参数将复制整个推送内容。                                                               |
| sound     | 可以为推送设置不同的铃声                                                                                |
| icon      | 为推送设置自定义图标，设置的图标将替换默认Bark图标。 图标会自动缓存在本机，相同的图标 URL 仅下载一次。                                    |
| group     | 对消息进行分组，推送将按group分组显示在通知中心中。 也可在历史消息列表中选择查看不同的群组。                                           |
| isArchive | 传 1 保存推送，传其他的不保存推送，不传按APP内设置来决定是否保存。                                                        |
| url       | 点击推送时，跳转的URL ，支持URL Scheme 和 Universal Link                                                 |

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
