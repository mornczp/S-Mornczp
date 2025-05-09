#!/bin/bash


connected=0
while [ $connected -eq 0 ]; do
    # 检查是否有设备连接
    echo "检查设备连接状态..."
    output=$(./upgrade_tool ld)
    echo "$output"
    
    if echo "$output" | grep -q "List of rockusb connected(1)"; then
        connected=1
    else
        # 将loader切换到loader模式
        echo "尝试切换到loader模式..."
        adb shell reboot loader
        echo "未检测到设备，等待5秒后重新检测..."
        echo $'\n'
        sleep 5
    fi
done


# 烧录升级固件并重启设备(确保update.img的路径正确)
echo "烧录升级固件并重启设备..."
./upgrade_tool uf ./rockdev/Image-rk3568_r/update.img

echo "操作完成。"

