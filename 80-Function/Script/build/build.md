---
UID: 20240423152932
aliases: 
source: 
tags: moc
cssclasses:
  - kanban 
  - gridlist 
  - noyaml
--- 

%% Begin Waypoint %%
- **[[build]]**
	- [[build.sh]]
	- [[rk3528_box_android.sh]]
	- [[rk3568_android.sh]]
	- [[update.sh]]

%% End Waypoint %%

## build
### build.sh
rk编译脚本
1. 计时功能
2. 自动压缩&文件命名
3. 增加-r功能，删除out
4. 自动修改内外版本号
### 旧版本
rk3528_box_android.sh
rk3568_android.sh

### update.sh
linux系统下的自动烧录脚本，要跟RK的烧录程序配合，放在项目同一根目录下。