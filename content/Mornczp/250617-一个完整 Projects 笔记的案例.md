---
title: 一个完整 Projects 笔记的案例
aliases: 
categories:
  - "[[Mornczp]]"
type:
  - "[[Knowledge]]"
tags:
  - Mornczp
source: 
cssclasses: 
created: 2025-06-17T21:19:47
updated: 2025-07-07T17:16
---
# 一个完整 Projects 笔记的案例
## Projects 笔记的框架
Projects 笔记一般包含一篇总笔记以及若干子笔记。
## Projects 总笔记
当我想创建一个项目的时候，首先将通过[[tp-Projects]]脚本（`-p`选项）生成一篇包含足够 yaml 信息的汇总笔记：
```yaml
---
title: "<% title %>"
aliases: 
type: 
  - "[[Projects]]"
tags:
uid: <% tp.file.creation_date("YYYYMMDDHHmmss") %>
finished: 
updated:  <% tp.file.creation_date("YYYY-MM-DDTHH:mm:ss") %>
---
```
其中
1.  `type`属性将指明笔记项目的特点。
2. `tags` 属性将明确该项目是属于哪一个 Areas（领域）。
3. `uid` 属性将记录项目开始时间，也是项目的唯一识别编码。
4. `finished` 属性将记录项目完成时间。
5. `updated` 属性将记录笔记的最后修改时间。
示例：
一篇 `tags` 领域的 `title`（`aliases`）`type` 笔记：一篇（XX）领域的 XX 开发（项目）笔记。
### 总笔记可能包含的内容
1. 项目的起因
2. 项目的需求分析
3. 项目的行动步骤（流程），可结合任务列表使用
	- [x] 任务列表
4. 项目需要的资源

如果内容文本量不大，可以直接记录在总笔记中。如果内容很多，将拆分后记录在子笔记里。
## Projects 子笔记
Projects 笔记的子笔记不需要记录什么 yaml 信息，只要确保每一篇子笔记都在 Projects 笔记中有链接即可，通过将汇总笔记作为与外界信息的主要接口，其将共享 Projects 笔记的所有 yaml 信息。
在这种使用方法下，子笔记可能只有title、aliases、uid、updated 是有意义的。


但在这种前提下，如果 Projects 笔记的子笔记超出了当前项目需求的范畴，应当将该笔记独立出去，作为一个全新的项目对待，满足其他的需求。
## Projects 的完成
将总笔记的 `finished` 填上对应的日期。
将 Projects 的收获，提炼的 Resources 和 Knowledge 记录在对应的地方。