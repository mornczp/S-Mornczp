@echo off
setlocal enabledelayedexpansion

:: This will create a Screenshot folder if it doesn't exist
if not exist "Temperature" md "Temperature"

:: This will create a folder based on current date inside Screenshot folder
set CURRENT_DATE=%date:~0,4%%date:~5,2%%date:~8,2%
set DATE_FOLDER=.\Temperature\%CURRENT_DATE%
if not exist "%DATE_FOLDER%" md "%DATE_FOLDER%"

:: Define the filename for the temperature log
set TEMP_LOG_FILENAME=%DATE_FOLDER%\TemperatureLog_%CURRENT_DATE%.txt

adb devices
adb root

:loop

set timestamp=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%

:: Use ADB to read the temperature and store it in a variable
for /f %%i in ('adb shell cat /sys/class/thermal/thermal_zone0/temp') do set TEMP_DATA=%%i

:: Append the timestamp and temperature data to the log file
echo !TIMESTAMP!:  !TEMP_DATA! >> !TEMP_LOG_FILENAME!

timeout /t 1 >nul
goto loop