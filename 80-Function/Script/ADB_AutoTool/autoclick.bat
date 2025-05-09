@echo off
setlocal enabledelayedexpansion

:: 初始化计数器
set /a counter=0

:: 获取连接的设备
adb devices
:: 尝试以root权限运行（取决于设备是否允许root权限）
adb root

echo Connector activated

:loop

:: 发送点击事件
adb shell input tap 1883 886

:: 计数器加1
set /a counter+=1

:: 打印点击次数
echo clicks: !counter!

:: 等待2秒
timeout /t 2 >nul

goto loop