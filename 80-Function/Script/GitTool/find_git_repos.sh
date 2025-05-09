#!/bin/bash

# 获取脚本所在的绝对路径
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# 定义保存结果的文件
GIT_DIRS_FILE="$SCRIPT_DIR/git_directories.txt"
LOGGED_GIT_DIRS_FILE="$SCRIPT_DIR/logged_git_directories.txt"

# 搜索并记录所有 .git 文件夹的路径
find /home/arm_rockchip/disk_sdd/hyz/cloud_rk356x -name ".git" > "$GIT_DIRS_FILE"

# 清空或创建日志文件
> "$LOGGED_GIT_DIRS_FILE"

# 读取记录并遍历每个 .git 文件夹
while IFS= read -r dir; do
    # 获取 .git 文件夹的父目录路径
    repo_dir=$(dirname "$dir")

    # 进入该目录
    cd "$repo_dir" || exit
	
	# 检查修改的日志，并存储输出结果到一个变量中
    git_log_output=$(git log --author="hyz <hyz@example.com>\|peng <2292090770@qq.com>" --name-only)

    # 检查由 hyz 或 peng 修改的日志
    if [ ! -z "$git_log_output" ]; then
        # 如果存在，记录这个目录
        echo "$repo_dir" >> "$LOGGED_GIT_DIRS_FILE"
    fi

    # 返回到脚本的原始目录
    cd "$SCRIPT_DIR" || exit
done < "$GIT_DIRS_FILE"

echo "筛选完成，结果保存在：$LOGGED_GIT_DIRS_FILE"