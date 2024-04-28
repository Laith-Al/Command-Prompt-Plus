@echo off
cls
color 3
Title Installation Of Command Prompt Plus!
cls
echo.
echo Setup Of Command Prompt Plus:
echo.
echo Thank you for installing CMD Plus!
echo Please Agree To The Following:
echo.
echo 1. Make sure you are installing the **Real** Command Prompt Plus From The Offical Github Page!
echo.
echo 2. Make sure you run through everything clearly, Un-installing Command Prompt Plus Is Not An Easy Task.
echo.
echo 3. Make sure you are running the latest version of the app!
echo.
echo If you agree, press any button to continue:
pause >nul

cls
echo.
echo Installation Steps:
echo ----------------------------
echo 1. Copy All Of The Files In The "Master_Version"
echo.
echo 2. Paste them in your "System32" Folder
echo.
echo 3. Run The Setup_Silent.exe File
echo.
echo 4. After Compleating, Restart Computer (Optional)
echo.
echo 5. Enjoy!
echo.
echo ----------------------------
echo Press Any Button To Install Registry Required!
pause >nul
start cmd+.reg
echo installed registry
pause
exit