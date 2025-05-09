---
UID: 20240522110647
aliases: 
tags:
  - git
source: 
cssclasses:
---

### gpt
先提需求：我现在有一个小型的服务器，我在上面进行日常的开发，然后有一个大型的远程服务器，IP是172.16.108.108，用来进行代码备份。我希望你帮我写一个.sh脚本，作用是根据最近的同步日期，遍历项目文件的所有的.git文件夹，找出小服务器项目最近的同步日期之后的更新，通过git指令同步到远程服务器。以下是一些细节补充和额外要求，以及介绍脚本的实现逻辑：
1. 首先，脚本会查看脚本路径下的一个叫Synchronization.ini文件，里面包含如下信息：
	User=czp
	Password=1
	Remote_IP=172.16.108.108
	Remote_address=/home/SDK_sdf/czp/ChinaTelecom3/
	Last_synchronization_time=2024/05/22
	将等号前面的参数用右边的赋值
2. 然后，依据信息绑定远程仓库


1.首先添加远程仓库指令参考：git remote add origin czp@172.16.108.108:/home/SDK_sdf/czp/ChinaTelecom3/kernel