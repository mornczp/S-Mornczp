```dataviewjs
let startDate = new Date("2024-02-18"); // 设置起始日期
let total = parseInt([new Date() - startDate] / (60*60*24*1000))

let totalDays = " $~~~~~~~~$***已使用Obsidian"+total+" 天，"

let nofold = '!"这里写想屏蔽的文件夹"'
let allFile = dv.pages(nofold).file

let totalMd = "已创建 "+allFile.length+" 篇笔记"

let totalTag = allFile.etags.distinct().length+" 个标签***"


dv.paragraph(
	totalDays+totalMd+"、"+totalTag+""
)
```

```dataviewjs
let totalMd = dv.pages().file.length + ""
navigator.clipboard.writeText(totalMd)
```
