---
title: 完成的 Projects 可视化
aliases: 
type:
  - "[[Knowledge]]"
categories:
  - "[[Mornczp]]"
tags:
  - Mornczp
created: 2025-07-16T16:32:16
updated: 2025-07-16T16:51
---
# 完成的 Projects 可视化

1. 判断文件名格式：
    - `YYYY-MM` → 月记
    - `YYYY` → 年记
2. 解析文件名并提取相应的年份和月份。
3. 根据文件名中的年份和月份，筛选出完成的项目，按完成日期排序。
    - 通过筛选项目的 `type` 为 `"[[Projects]]"`，`tags` 包含 `"summary"`，并且项目的 `finished` 属性存在且符合当前文件所对应的年月。
4. 显示符合条件的项目表格，包含项目名称、完成日期、分类。升序排序显示
    - 项目的标题作为链接，显示项目的 `finished` 日期，格式化为 "YYMMDD" 形式。
    - 显示项目的分类（如果有 `categories` 属性）。
## 使用地方
[[250402-月记|月记]]：[[tp-Month]]
[[250402-年记|年记]]