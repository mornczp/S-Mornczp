---
UID: 20240904095405
aliases:
  - 版本
source: 
tags: 
cssclasses: 
---
# Mornczp版本
不记录具体内容，记录库功能、结构、方法的修改

# Mornczp2.4.2

### [[2025-05-03]]
[[tp-DailyNotes]]修复只有当日日记可以正常创建并移动的问题。

## [[2025-05-01]]
日记功能优化。
1. [[tp-Month]]自动生成文件夹并移动到对应路径。
2. [[tp-DailyNotes]] 自动移动到对应月份路径。
3. 受[[tp-DailyNotes]]路径影响，[[当日统计]]绝对路径更新。
## [[2025-04-30]]
1. [[tp-Moc]] 性能增强及变更。
	1. 实现了同时新建同名文件夹和文件。
	2. [[mymoc.css]] 变更 UI 显示逻辑，决定显示属性栏。
2. [[EasyTyping]] 开启 `在中文和英文之间插入空格` 选项。
## [[2025-04-29]]
1. [[sidebar]] UI 优化。调button，统一风格，设置不同颜色，调位置。
2. [[80-Function/Obsidian_Tool/Todo|Todo]]优化链接显示。
3. [[月度笔记串联]]优化链接跳转，直接到标题下。

# Mornczp2.4.1
## [[2025-04-22]]
1. 增加标签页标题栏显示空间。
	1. 改路径名01-After_All_This_Time 为[[01-AATT]]。
	2. [[Commander]]改页首的 button 到状态栏。
2. 优化[[sidebar]]的功能，添加常用功能。调 UI 和 button，新增达[[02-Duty]]、[[03-Life]]按钮。
## [[2025-04-02]]
- [[250402-Todo|Todo]]功能定义及优化。
	1. 修改[[80-Function/Obsidian_Tool/Todo|Todo]]UI，去callout化，添加勾选功能。新增一个链接，指向当月月记。变更使用的逻辑，记录于[[250402-Todo|Todo]]。
	2. [[tp-Month]]新增Todo模块。
# Mornczp2.4
## [[2025-03-15]]
修改文件命名逻辑：日期+专有名词。
1. 启用[[250315-Front_matter_title|Front_matter_title]]插件。
2. 修改所有[[Template]]的内容。
## [[2025-03-11]]
新增笔记[[命名]]逻辑，[[tp-Maintp]]新增功能：
1. 新增-t功能，打印日期前缀
2. 自动去功能前缀。
# Mornczp2.3.1
## [[2025-03-07]]
新增[[03-Life]]homepage；
新增[[02-Duty]]homepage。
## [[2025-03-06]]
去[[Admonition]]化
	-  修改[[tp-DailyNotes]]的<当天创建的文件>格式，从ad到callout；
	-  [[sidebar]]改ad为callout；
	-  [[80-Function/Obsidian_Tool/Todo]]、月记改ad为callout，改[[mytool.css]]；
# Mornczp2.3
## [[2025-02-18]]
- [[80-Function]]整理。
	1. 改名，规范化。
	2. Template新增[[tp-Homepage]]。
	3. Script移动到02-Duty，独留一个Obsidian_Script文件夹，虽然为空。
	4. 单独开一个[[Obsidian_Tool]]放各种组件。
- 移除90-Other/[[XmindNote]]。
## [[2025-02-17]]
- 完善[[Css设计]]理念
	- 新增[[myhomepage.css]]、[[mymoc.css]]，合并功能替换原来的。
	- 修改[[mytool.css]]。
	- 修改[[tp-Moc]]、[[tp-Homepage]]、[[tp-Homepage]]的cssclasses属性。
- 启用[[Omnisearch]]插件、停用[[Floating-Search]]插件。替换sidebar的Search按钮，锁定sidebar。
## [[2025-02-11]]
- 尝试[[New_Tab+]]插件，不启用。
# Mornczp2.2.1
## [[2025-01-06]]
- 停用[[Banners]]，启用[[A/B/250430-tp.file.include ()]]。
- 启用[[Delete_Empty.bat]]脚本，整理99-Attachment
# Mornczp2.2
## [[2024-12-26]]
- 新设[[年度笔记串联]]。
-  修改[[当日统计]]无当日日记报错，当日无日记则文字提示。

## [[2024-12-25]]
修改[[月度笔记串联]]以支持复杂功能：
2. 属性-月份切换功能
3. 属性-选择不同二级标题下的内容分别显示
4. 显示日记内三级以下标题，隐藏二级标题(基于异步的 DataviewJS 脚本，`dv.sectionLink` 嵌入一个章节时，它可能不会显示该章节下的子标题)
5. 界面友好化
6. 显示按日期的从前往后的逻辑呈现
## [[2024-12-24]]
基于hotkeys for specific files、commander左侧边栏新增一个按钮打开[[80-Function/Obsidian_Tool/Todo]]
## [[2024-12-23]]
 1. [[home]]调整UI，调整[[当日统计]]显示。
 2. homepage布局左上角新增[[80-Function/Obsidian_Tool/Todo]]模块。
 3. 调整Diary_Tool：[[时段统计]]、[[当日统计]]UI。
 4. 修改[[tp-DailyNotes]]。
	 去掉属性css(noyaml和mynote)和tag；
	 "当天创建的文件"移到末尾；
	 [[批量正则替换]]去掉After_All_This_Time前的🕥，改Entertament为Life。
7. 修改[[tp-Month]]，去掉每月笔记串联，新增每月总结。
## [[2024-12-20]]
基于[[250505-重要程度分层|重要程度分层]]重构底层分层。
[[tp-DailyNotes]]添加属性notes，为当日笔记数量

# Mornczp2.1.3

## [[2024-12-12]]
更新插件：

| 插件                             | 新版本    | 旧版本    |
| ------------------------------ | ------ | ------ |
| [[Admonition]]                 | 10.3.2 | 9.2.1  |
| [[Attachment-Management]]      | 0.9.16 | 0.9.15 |
| [[Banners]]                    | -      | 1.3.3  |
| [[Buttons]]                    | 0.5.1  | 0.4.19 |
| [[Calendar]]                   | -      | 1.5.10 |
| [[Commander]]                  | 0.5.2  | 0.4.9  |
| [[Dataview]]                   | 0.5.67 | 0.5.55 |
| [[Editing-Toolbar]]            | 2.4.16 | 2.3.1  |
| [[Floating-Search ]]           | 4.0.0  | 3.5.1  |
| [[Full_calendar]]              | -      | 0.10.7 |
| [[Obsidian_Git]]               | 2.30.1 | 2.24.1 |
| [[Homepage]]                   | 4.0.7  | 2.8.1  |
| [[Hotkeys-for-specific-files]] | 1.4.1  | 1.3.0  |
| [[Quick-explorer]]             | 0.2.12 | 0.2.10 |
| [[Quickadd]]                   | 1.11.5 | 0.12.0 |
| [[recent-files]]               | 1.7.3  | 1.5.0  |
| [[settings-search]]            | 1.3.10 | 1.3.6  |
| [[Style-settings]]             | 1.0.9  | 1.0.3  |
| [[250430-Templater|Templater]]                  | 2.9.1  | 1.16.0 |
| [[Waypoint]]                   | -      | 2.1.0  |

# Mornczp2.1.2
## [[2024-10-18]]
更新Obsidian，从1.6.7到1.7.4，问题：
8. 自动更新1.7.4后，社区插件市场无法浏览。官网重新安装1.7.4解决
9. 插件[[Quick-explorer]]0.2.8功能异常。更新0.2.10后正常。
## [[2024-10-15]]
[[home]]UI调整，图标调整，按模块区分。
> [!info]- 图
> ![[IMG-Mornczp版本-20241220173946071.png]]

## [[2024-10-09]]
[[sidebar]]优化，调颜色，改按钮
## [[2024-10-08]] 
修改原因：
新建库的时候，拷贝.obsidian文件夹后往往还缺少必要的UI、脚本。新建的80-Funcion文件夹可以一个文件夹包含所有必要UI、脚本文件。
- 修改之前的88-Template文件夹为[[80-Function]]文件夹。集成各模块内容，包括：
	- 01-Diary里的Diary_Tool。
	- 88-Template的Script和Template。
	- 99-Attachment里的home。
- 修改根目录.gitignore里相关路径。
- 修改[[mybutton]]里里home键的路径。
- 修改Setting-Template插件的相关路径。
- 修改Setting-Core plugins-Template插件的相关路径。
- 重新布置workspace插件的layout。
- 修改Core plugins里日记脚本的路径。

# Mornczp2.1.1
## [[2024-09-25]] 
- attachment-management插件更新，优化附件移动(新版本只移动图片？)
## [[2024-09-04]]
- [[home]]新增[[Mornczp版本]]链接
## [[2024-09-03]] 
- [[home]]新增指令集模块
# Mornczp2.1
## [[2024-08-21]]
- 基于[[Mornczp2.0]]版本进行UI、功能的细微优化
- 启用新插件[[Quick-explorer]]，作用：提供上方路径链接的索引
- 基于[[MOC]]重构笔记结构
# [[Mornczp2.0]]
## [[2024-08-07]]
- 做加法。从零开始重新搭建OB库，去除用不上的插件、脚本等
# [[Mornczp1.x]]
## Before 2024-08-07
- 做减法。基于blue topaz，包含其大量插件和教程，详见[Blue topaz 主题](https://kknwfe6755.feishu.cn/docs/doccn67RYLVN4IQZiJTwviIdnog)
## [[2024-05-14]]
启用[[Full_calendar]]插件，基于此实践[[柳比歇夫时间记录法]]。
# [[Mornczp1.0]]
## [[2024-02-18]]
- 取名Mornczpdatabase
- 早期思考Xmind跟Obsidian联用
# Mornczp0.x
## 2023-07-07-2024-02-18
- 基于Xmind做笔记，[[XmindNote]]

# [[旧笔记]]
## Before 2023-07-07
- 共114篇小米笔记，仅收录部分。


%% Begin Waypoint %%
- **[[Mornczp版本]]**
	- [[Mornczp1.0]]
	- [[Mornczp1.x]]
	- [[Mornczp2.0]]

%% End Waypoint %%