---
UID: 20250217142308
aliases: 
source: 
tags: 
cssclasses:
---
## hideproperties.css
该css隐藏上方的属性选项。
```java
/*隐藏上方的properties(属性)选项*/
.myhomepage .metadata-container {
	display:none !important;
}
	```
2025-01-06停用Pixel_Banner后废弃该css。
2025-02-17发现[[Invalid_properties问题]]后复用，并于tp-Moc启用。
### 其他方法
OB---后加一个空格即可隐藏上方的属性选项，[[Banners]]遇到这种情况会出BUG，强行加---在后面。Moy的解释：
	建议修改，这显然不是规范语法（
	你相当于用一个破坏性的【修改内容（让它失效）】的方式来达成【外观修改】
	which is totally opposite to the modern CSS concept.

### 另一种思路
[PKMer_Obsidian 样式 - 控制属性面板 (YAML) 的显示状态](https://pkmer.cn/Pkmer-Docs/10-obsidian/obsidian%E5%A4%96%E8%A7%82/css-%E7%89%87%E6%AE%B5/obsidian%E6%A0%B7%E5%BC%8F-%E6%8E%A7%E5%88%B6%E5%B1%9E%E6%80%A7%E9%9D%A2%E6%9D%BFyaml%E7%9A%84%E6%98%BE%E7%A4%BA%E7%8A%B6%E6%80%81/)