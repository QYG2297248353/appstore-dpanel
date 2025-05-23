# Sentinel Dashboard

随着微服务的流行，服务和服务之间的稳定性变得越来越重要。Sentinel是面向分布式、多语言异构化服务架构的流量治理组件，主要以流量为切入点，从流量路由、流量控制、流量整形、熔断降级、系统自适应过载保护、热点流量防护等多个维度来帮助开发者保障微服务的稳定性。

![Sentinel Dashboard](https://file.lifebus.top/imgs/sentinel_dashboard_cover.png)

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 快速启动

访问地址
`http://IP:8858/sentinel`

> 用户名：`sentinel`
>
> 密码：`sentinel`

## Sentinel 的历史

+ 2012 年，Sentinel 诞生，主要功能为入口流量控制。
+ 2013-2017 年，Sentinel 在阿里巴巴集团内部迅速发展，成为基础技术模块，覆盖了所有的核心场景。Sentinel 也因此积累了大量的流量归整场景以及生产实践。
+ 2018 年，Sentinel 开源，并持续演进。
+ 2019 年，Sentinel 朝着多语言扩展的方向不断探索，推出 C++ 原生版本，同时针对 Service Mesh 场景也推出了 Envoy 集群流量控制支持，以解决
  Service Mesh 架构下多语言限流的问题。
+ 2020 年，推出 Sentinel Go 版本，继续朝着云原生方向演进。
+ 2021 年，Sentinel 正在朝着 2.0 云原生高可用决策中心组件进行演进；同时推出了 Sentinel Rust 原生版本。同时我们也在 Rust
  社区进行了 Envoy WASM extension 及 eBPF extension 等场景探索。
+ 2022 年，Sentinel 品牌升级为流量治理，领域涵盖流量路由/调度、流量染色、流控降级、过载保护/实例摘除等；同时社区将流量治理相关标准抽出到
  OpenSergo 标准中，Sentinel 作为流量治理标准实现。

## Sentinel 基本概念

### 资源

资源是 Sentinel 的关键概念。它可以是 Java 应用程序中的任何内容，例如，由应用程序提供的服务，或由应用程序调用的其它应用提供的服务，甚至可以是一段代码。在接下来的文档中，我们都会用资源来描述代码块。

只要通过 Sentinel API 定义的代码，就是资源，能够被 Sentinel 保护起来。大部分情况下，可以使用方法签名，URL，甚至服务名称作为资源名来标示资源。

### 规则

围绕资源的实时状态设定的规则，可以包括流量控制规则、熔断降级规则以及系统保护规则。所有规则可以动态实时调整。

## Sentinel 是如何工作的

Sentinel 的主要工作机制如下：

+ 对主流框架提供适配或者显示的 API，来定义需要保护的资源，并提供设施对资源进行实时统计和调用链路分析。
+ 根据预设的规则，结合对资源的实时统计信息，对流量进行控制。同时，Sentinel 提供开放的接口，方便您定义及改变规则。
+ Sentinel 提供实时的监控系统，方便您快速了解目前系统的状态。

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
