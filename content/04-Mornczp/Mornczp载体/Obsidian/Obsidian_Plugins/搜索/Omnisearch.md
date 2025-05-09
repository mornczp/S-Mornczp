---
UID: 20250217135415
aliases: 
source: 
tags: 
cssclasses:
---
## Omnisearch
提供更强大的智能搜索，可以搜索 PDF 文件和图像中的文字内容。

### 细节
启用时间：2025-02-17。当时发现一个[[Invalid_properties问题]]，碍于properties的内容可能会影响搜索，一直不喜欢往文档里添加太多无关内容。但加空格的方式如果不规范，那还是算了。
结果，
1. 启用更好的搜索插件Omnisearch，体验上Omnisearch的搜索结果比[[Floating-Search]]要好。Floating-Search有bug，打开后会弹2个窗；人气更低，维护比较慢；搜索结构排序怪怪的，例如properties有的内容会排很前。
2. 改用css隐藏properties。

### 问题
发现中文和英文连起来的组合会导致无法搜索。
中间加 ` `、`-`、`_` 可规避影响。
[[EasyTyping]]在中文和英文之间插入空格选项。