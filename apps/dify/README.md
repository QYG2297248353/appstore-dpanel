# Dify

Dify 是一个开源的 LLM 应用开发平台。其直观的界面结合了 AI 工作流、RAG 管道、Agent、模型管理、可观测性功能等，让您可以快速从原型到生产

![Dify](https://file.lifebus.top/imgs/dify_cover.png)

![](https://img.shields.io/badge/%E6%96%B0%E7%96%86%E8%90%8C%E6%A3%AE%E8%BD%AF%E4%BB%B6%E5%BC%80%E5%8F%91%E5%B7%A5%E4%BD%9C%E5%AE%A4-%E6%8F%90%E4%BE%9B%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81-blue)

## 简介

### 工作流

在画布上构建和测试功能强大的 AI 工作流程，利用以下所有功能以及更多功能

### 全面的模型支持

与数百种专有/开源 LLMs 以及数十种推理提供商和自托管解决方案无缝集成，涵盖 GPT、Mistral、Llama3 以及任何与 OpenAI API 兼容的模型

### Prompt IDE

用于制作提示、比较模型性能以及向基于聊天的应用程序添加其他功能（如文本转语音）的直观界面

### RAG Pipeline

广泛的 RAG 功能，涵盖从文档摄入到检索的所有内容，支持从 PDF、PPT 和其他常见文档格式中提取文本的开箱即用的支持

### Agent 智能体

您可以基于 LLM 函数调用或 ReAct 定义 Agent，并为 Agent 添加预构建或自定义工具。Dify 为 AI Agent
提供了50多种内置工具，如谷歌搜索、DALL·E、Stable Diffusion 和 WolframAlpha 等

### LLMOps

随时间监视和分析应用程序日志和性能。您可以根据生产数据和标注持续改进提示、数据集和模型

### 后端即服务

所有 Dify 的功能都带有相应的 API，因此您可以轻松地将 Dify 集成到自己的业务逻辑中

## 功能比较

<table style="width: 100%;">
  <tr>
    <th align="center">功能</th>
    <th align="center">Dify.AI</th>
    <th align="center">LangChain</th>
    <th align="center">Flowise</th>
    <th align="center">OpenAI Assistant API</th>
  </tr>
  <tr>
    <td align="center">编程方法</td>
    <td align="center">API + 应用程序导向</td>
    <td align="center">Python 代码</td>
    <td align="center">应用程序导向</td>
    <td align="center">API 导向</td>
  </tr>
  <tr>
    <td align="center">支持的 LLMs</td>
    <td align="center">丰富多样</td>
    <td align="center">丰富多样</td>
    <td align="center">丰富多样</td>
    <td align="center">仅限 OpenAI</td>
  </tr>
  <tr>
    <td align="center">RAG引擎</td>
    <td align="center">✅</td>
    <td align="center">✅</td>
    <td align="center">✅</td>
    <td align="center">✅</td>
  </tr>
  <tr>
    <td align="center">Agent</td>
    <td align="center">✅</td>
    <td align="center">✅</td>
    <td align="center">❌</td>
    <td align="center">✅</td>
  </tr>
  <tr>
    <td align="center">工作流</td>
    <td align="center">✅</td>
    <td align="center">❌</td>
    <td align="center">✅</td>
    <td align="center">❌</td>
  </tr>
  <tr>
    <td align="center">可观测性</td>
    <td align="center">✅</td>
    <td align="center">✅</td>
    <td align="center">❌</td>
    <td align="center">❌</td>
  </tr>
  <tr>
    <td align="center">企业功能（SSO/访问控制）</td>
    <td align="center">✅</td>
    <td align="center">❌</td>
    <td align="center">❌</td>
    <td align="center">❌</td>
  </tr>
  <tr>
    <td align="center">本地部署</td>
    <td align="center">✅</td>
    <td align="center">✅</td>
    <td align="center">✅</td>
    <td align="center">❌</td>
  </tr>
</table>

## 安装说明

在安装 Dify 之前，请确保您的机器满足以下最低系统要求：

+ CPU >= 2 Core
+ RAM >= 4 GiB

## 修改配置

应用安装后，如有需要的配置，请修改应用目录下的 `.env` 文件

---

![Ms Studio](https://file.lifebus.top/imgs/ms_blank_001.png)
