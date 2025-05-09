@echo off

REM Delay for 3 seconds at the start of the script
timeout /t 5 /nobreak

REM Navigate to the directory and perform git operations
cd /d E:\A\Mornczp\Mornczp2.0
echo start to pull
git fetch --all
git reset --hard origin/main
git pull

REM Navigate to another directory and perform git operations
cd /d D:\A\Learning\Mornczp\Mornczp2.0
echo start to pull
git fetch --all
git reset --hard origin/main
git pull