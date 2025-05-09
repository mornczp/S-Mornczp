@echo off
setlocal enabledelayedexpansion

:: This will create a Record folder if it doesn't exist
if not exist "Record" md "Record"

:: This will create a folder based on current date inside Screenshot folder
set CURRENT_DATE=%date:~0,4%%date:~5,2%%date:~8,2%
set DATE_FOLDER=.\Record\%CURRENT_DATE%
if not exist "%DATE_FOLDER%" md "%DATE_FOLDER%"

adb devices
adb root


set timestamp=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%

echo To end early, press Ctil+C and enter N
adb shell screenrecord --bit-rate 2000000 /data/screenrecord_!timestamp!.mp4
adb pull /data/screenrecord_!timestamp!.mp4 .\Record\%CURRENT_DATE%
adb shell rm /data/screenrecord_!timestamp!.mp4

endlocal