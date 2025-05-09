---
UID: 20250217154929
aliases: 
source: 
tags: 
cssclasses:
---
## myhomepage.css
[[tp-Homepage]]使用。cssclasses功能合一：
  - hideproperties
  - fullwidth
  - list-cards
  - cards-cols-3


	### 隐藏上方的属性选项
```java
/*隐藏上方的properties(属性)选项*/
.myhomepage .metadata-container {
	display:none !important;
}
```

### fullwidth
更换fullwidth为myhomepage。
```java
/* ======= custom cssclass ======= */
/* ========fullwidth================ */
/*主页预览宽度*/
:is(.markdown-preview-view,.markdown-rendered).fullwidth.is-readable-line-width .markdown-preview-sizer,
.markdown-source-view.is-readable-line-width.fullwidth .CodeMirror,
.is-readable-line-width.fullwidth :is(.markdown-preview-section,.markdown-rendered),
.is-readable-line-width.fullwidth :is(.markdown-preview-section,.markdown-rendered) > div,
:is(.markdown-preview-view,.markdown-rendered).is-readable-line-width.fullwidth :is(.markdown-preview-section,.markdown-rendered) {
  width: 100% !important;
  max-width: 100% !important;
  /* margin: 0 auto; */
}
```

### editpicture.css
调整图片位置，主页头像的图片左移动
跟blue-topaz主题有冲突，需要改bug

### Minimal list-Cards
主页三列UI设计
摘自Minimal list-Cards，替换名称为myhomepage