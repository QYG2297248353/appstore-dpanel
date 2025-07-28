# Openpanel

Openpanel 是一个开源网络和产品分析平台，它结合了 Mixpanel 的强大功能和 Plausible 的易用性，是最好的 Google Analytics
替代品之一。

![Openpanel](https://file.lifebus.top/imgs/openpanel_cover.png)

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 特性

### 网络分析

+ 实时数据 ：实时查看访客活动
+ 流量来源 ：了解访客来自哪里
+ 地理洞察 ：追踪访客位置和趋势
+ 设备分析 ：监控不同设备的使用情况
+ 页面性能 ：分析访问量最大的页面

### 产品分析

+ 事件跟踪 ：监控用户操作和交互
+ 用户资料 ：建立详细的用户旅程洞察
+ 漏斗 ：分析转化路径
+ 留存率 ：跟踪用户参与度
+ 自定义属性 ：为事件添加上下文

## 快速开始 SDK

### 脚本标签

```html

<script>
    window.op = window.op || function (...args) {
        (window.op.q = window.op.q || []).push(args);
    };
    window.op('init', {
        clientId: 'YOUR_CLIENT_ID',
        trackScreenViews: true,
        trackOutgoingLinks: true,
        trackAttributes: true,
    });
</script>
<script src="https://<Domain>/op1.js" defer async></script>
```

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
