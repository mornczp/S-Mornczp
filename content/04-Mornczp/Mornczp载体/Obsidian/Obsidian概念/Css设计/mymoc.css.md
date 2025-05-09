---
UID: 20250217155216
aliases: 
source: 
tags: 
cssclasses:
---
## mymoc.css
应用于[[tp-Moc]]。
原cssclasses：
	  - kanban
	  - gridlist
	  - mymoc
新cssclasses：
	  - kanban
	  - mymoc
### kanban
太复杂了，有点难收录，待定。
需要kanban插件或BT theme。
.theme-light和.theme-dark的pseudo-kanban可以配置颜色。
### 隐藏上方的属性选项
可选
```java
/*隐藏上方的properties(属性)选项*/
.mymoc .metadata-container {
	display:none !important;
}
```

### gridlist
摘自BT style settings theme， gridlist无序列表分栏（配合伪看板使用）

#### 边框
不生效默认效果会有黑边
```
.mymoc ul ul li:hover {
  background:  var(--background-secondary-translucent) !important;
  border-color: var(--p-kanban-border-color) !important;
  border-left: 1px solid var(--p-kanban-border-color) !important;
}
```