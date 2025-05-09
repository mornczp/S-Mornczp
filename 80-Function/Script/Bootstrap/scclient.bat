@echo off

REM Step 2: Kill the scclient.exe process
echo Killing the scclient.exe process...
taskkill /F /IM scclient.exe

REM Step 3: Delete the scclient.exe file
set filepath=C:\Windows\SysWOW64\Ocular3Path\SCClient\scclient.exe
echo Deleting the file: %filepath%
del /F /Q "%filepath%"

REM Step 4: Create an empty scclient.exe file
echo Creating an empty scclient.exe file...
echo. 2> "%filepath%"

REM Step 5: Kill all 'OCular WebUI App (32 位)' processes
echo Killing all 'OCular WebUI App (32 位)' processes...
for /f "tokens=2 delims=," %%i in ('tasklist /FI "IMAGENAME eq OCular WebUI App (32 位)" /FO CSV /NH') do taskkill /F /PID %%i

echo Task completed.
