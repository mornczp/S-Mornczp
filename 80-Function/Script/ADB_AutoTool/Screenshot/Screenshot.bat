@echo off
setlocal enabledelayedexpansion

:: This will create a Record folder if it doesn't exist
if not exist "Record" md "Record"

:: This will create a folder based on current date inside Record folder
set CURRENT_DATE=%date:~0,4%%date:~5,2%%date:~8,2%
set DATE_FOLDER=.\Record\%CURRENT_DATE%
if not exist "%DATE_FOLDER%" md "%DATE_FOLDER%"

adb devices
adb root

:loop

set timestamp=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set timestamp=%timestamp: =0%

adb shell screencap -p /data/Screenshot_!timestamp!.png
adb pull /data/Screenshot_!timestamp!.png .\Record\%CURRENT_DATE%
adb shell rm /data/Screenshot_!timestamp!.png
timeout /t 30 >nul
goto loop