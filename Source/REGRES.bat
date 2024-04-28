@echo off
cls
color 4
cls
echo.
echo --------------------------------
echo Command Prompt +
echo --------------------------------
echo.
echo Are you sure you want to un-install the registry for CMD+>
echo.
echo CMD+ ca fully function without the registry installed with CMD+
echo.
echo Un-installing registry will result in removing the "Command Prompt +" title and the Custom Prompt Added!
echo.
echo Press Anything To Continue!
pause >nul
cls
echo Reseting registry!
echo.
cd C:\Windows\System32
start cmdu.reg
pause
exit