---
UID: 20240423153326
aliases: 
source: 
tags: moc
cssclasses:
  - kanban 
  - gridlist 
  - noyaml
--- 

%% Begin Waypoint %%
- **[[GitTool]]**
	- [[find_git_repos - 副本.sh]]
	- [[find_git_repos.sh]]
	- [[FindData.sh]]
	- **[[git同步]]**
	- [[gitlogout.sh]]

%% End Waypoint %%

## GitTool

### gitout.sh
遍历项目下所有的.git仓库，通过git log查找出符合要求(作者)的部分，导出log。
### 旧版本
find_git_repos - 副本.sh
find_git_repos.sh
FindData.sh


### .gitignore生成
```
#!/bin/bash

# 指定不应该被加入.gitignore的文件夹和文件
excludes=("kernel" "u-boot" "hardware" "device" "system" "external" "frameworks" "packages" "vendor" "build")

# 初始化.gitignore文件
echo "# 自动生成的.gitignore文件" > .gitignore

# 首先，将排除的项以注释形式加入.gitignore
for exclude in "${excludes[@]}"; do
	echo "# $exclude" >> .gitignore
done

# 添加一个空行分隔
echo "" >> .gitignore

# 遍历当前目录下的所有文件和文件夹
for item in *; do
	# 检查当前条目是否应该被排除
	exclude_item=false
	for exclude in "${excludes[@]}"; do
		if [[ $item == $exclude ]]; then
			exclude_item=true
			break
		fi
	done

	# 如果不在排除列表中，就加入到.gitignore
	if [ "$exclude_item" = false ]; then
		echo "$item" >> .gitignore
	fi
done

echo ".gitignore文件已生成并编辑完成。"
```
- GPT
> 以下是项目里的所有文件：
> :44Android.bp               IMAGE                rk3568_android_nrm.sh
> '-Ark3568_android -.sh'   javaenv.sh           rk3568_android.sh
>  art                      kernel               rkbin
>  bionic                   kernel.tar.gz        RKDocs
>  bootable                 libcore              RKDocs.tar.gz
>  bootstrap.bash           libnativehelper      rkst
>  build                    Makefile             RKTools
>  build.sh                 mkcombinedroot       rockdev
>  compatibility            mkimage_ab.sh        sdk
>  cts                      mkimage.sh           settings_changes.diff
>  dalvik                   nohup.log            system
>  developers               out                  test
>  development              packages             toolchain
>  device                   pdk                  tools
>  external                 platform_testing     u-boot
>  frameworks               prebuilts            -urk3568_android.sh
>  hardware                 restore_patches.sh   vendor
> 请帮我写一个sh脚本，作用是生成并编辑.gitignore文件，要求如下：
> 1.遍历当前项目的文件夹，加入当前路径的所有文件和文件夹。
> 2.设置一个编辑模块，在这个模块可以选择排除加入.gitignore的文件和文件夹。
> 3.排除于.gitignore的文件和文件夹包括：
> kernel,u-boot,hardware,device,system,external,frameworks,packages,vendor,build也要加入到.gitignore里，但是会被加#注释掉
> 脚本
> 先将项目所有内容加到.gitigmore里，通过在excludes栏里添加文件或文件夹来选择需要添加的内容。
	



