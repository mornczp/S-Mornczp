<%*
let newtitle;
title=await tp.system.prompt("请输入要创建的文件名");
// 检查是否按下了ESC键或未输入
if (title) {
	await tp.file.rename(title);
	// 按下ESC，或未输入内容，取消创建文件并停止脚本执行
} else {
	await tp.file.rename(tp.date.now("YYYYMMDDHHmmss"));
}
-%>

<%-* if (title.startsWith("-m")) { -%>
<%-tp.file.include("[[tp-Moc]]")-%>
<%-* }else if (title.startsWith("-M")) { -%>
<%-tp.file.include("[[tp-Month]]")-%>
<%-* }else { -%>
<%-* /* 如果笔记名中没有“-”则会选择下方模板 */ -%>
<%-tp.file.include("[[tp-Common]]")-%>
<%-* } -%>

