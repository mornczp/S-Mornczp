---
UID: 20240905172548
aliases: 
source: 
tags: 
cssclasses:
  - 
---
[callout标注块 | obsidian文档咖啡豆版](https://coffeetea.top/zh/markdown/callout.html)

## callout
callout 标注块是 obsidian 新增的格式，也被称为**admonitions警告**表现形式是带颜色的块引用，有标题、背景颜色和icon图标。 他极大的丰富了 obsidian 的排版，增加了美观度。
### 语法

> [!info] 默认的callout
> 包裹的内

> [!info]+ 这是一个可折叠的callout
> 包裹的内容，注意上面的+号

> [!info]- 这是一个被折叠的callout
> 包裹的内容，注意上面的-号

### 自定义
callout可以有很多的样式，替换`[!info]`中的名称

> [!hibox]
> `button-home` 
- Note
- Abstract
- Info
- Todo
- Tip
- Success
- Question
- Warning
- Failure
- Danger
- Bug
- Example
- Quote
#### 去图标
>[!info|noicon] 去图标
> [!info|noicon] 
#### 去边框
>[!|noborder banner] 去边框
>[!|noborder banner]
### 插件[[Admonition]]
**修改文档后，callout内的链接会同步修改，但AD内的不会！**
```ad-note
test
```
```ad-note
test
```