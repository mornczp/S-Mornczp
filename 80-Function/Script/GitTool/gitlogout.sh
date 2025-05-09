#!/bin/bash

# 项目名
PROJECT="RZYAIO01"

# 目标作者数组
AUTHORS=("Mornczp" "czp" "hyz <hyz@example.com>" "peng <2292090770@qq.com>")

# 基础目录，用于存放生成的Markdown文件和目录结构
BASE_DIR="ChinaTelecom3_git"

# 创建基础目录
mkdir -p "$BASE_DIR"

# 搜索所有.git目录
find . -type d -name ".git" | while read git_dir; do
    # 获取.git目录所在的路径
    repo_path=$(dirname "$git_dir")
    # 获取.git目录所在的根文件夹名称
    base_dir_name="$(basename "$repo_path")"
    
    # 准备一个变量来存储所有匹配的提交日志
    all_commits=""

    # 遍历所有作者
    for AUTHOR in "${AUTHORS[@]}"; do
        # 汇总所有符合条件的作者的提交
        commits=$(git -C "$repo_path" log --author="$AUTHOR")
        if echo "$commits" | grep -q 'commit'; then
            all_commits+="$commits\n\n"
        fi
    done
    
    # 如果找到了至少一个作者的提交，则写入日志
    if [ ! -z "$all_commits" ]; then
        # 从完整路径中移除"./"，避免在创建目录时出现问题
        relative_path="${repo_path#./}"
        # 创建与原项目相同的目录结构
        mkdir -p "$BASE_DIR/$relative_path"
        
        # 创建Markdown文件
        markdown_file_name="$BASE_DIR/$relative_path/$PROJECT"_"$base_dir_name.md"
        echo "$markdown_file_name"
        # 添加日志文件的头部，包含.git目录的路径和作者
        echo -e "# $base_dir_name\n" > "$markdown_file_name"
        
        # 将找到的所有日志追加到Markdown文件中
        echo -e "$all_commits" >> "$markdown_file_name"
    fi
done

echo "Log generation completed."
