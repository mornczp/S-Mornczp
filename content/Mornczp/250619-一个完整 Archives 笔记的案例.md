---
title: 一个完整 Archives 笔记的案例
aliases: 
categories: 
type: "[[Knowledge]]"
tags: 
created: 2025-06-19T16:48:19
updated: 2025-07-07T17:16
---
# 一个完整 Archives 笔记的案例
## Projects 笔记的框架
Archives 笔记一般包含一篇汇总笔记。
## Archives 总笔记
当我想创建一个项目的时候，首先将通过[[tp-Projects]]脚本（`-p` 选项）生成一篇包含足够 yaml 信息的汇总笔记：
```yaml
---
title: "<% title %>"
aliases: 
type: 
  - "[[Archives]]"
tags:
uid: <% tp.file.creation_date("YYYYMMDDHHmmss") %>
finished: 
updated:  <% tp.file.creation_date("YYYY-MM-DDTHH:mm:ss") %>
---
```
其中
1.  `type` 属性将指明笔记项目的特点。
2. `tags` 属性将明确该项目是属于哪一个 Areas（领域）。
3. `uid` 属性将记录项目开始时间，也是项目的唯一识别编码。
4. `finished` 属性将记录项目完成时间。
5. `updated` 属性将记录笔记的最后修改时间。
示例：
一篇 `tags` 领域的 `title`（`aliases`）`type` 笔记：一篇（XX）领域的 XX 开发（档案）笔记。
### 总笔记可能包含的内容
1. 其中的链接将指向所有子笔记，子笔记都继承有 Archives 属性。
2. 写明子笔记过时或停止维护的原因。

## Archives 子笔记
只要确保子笔记的反向链接要指向 Archives 汇总笔记，且不应指向任何 [[Knowledge]] 笔记即可。
其他的信息，子笔记之前该怎么样就怎么样。举个例子：
1. 之前在什么路径，现在还在什么路径。
2. 之前有什么属性，现在还有什么属性。