@echo off
cls
color 4
echo.
echo ---------------------------------------------
echo Are You Sure You Want To Restart To The Bios?
echo ---------------------------------------------
echo.
echo Would you like to continue? (Y/N): 
set /p choice=

if /i "%choice%"=="Y" (
    goto Yes
) else if /i "%choice%"=="N" (
    goto No
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)

:Yes
echo You chose to continue.
shutdown /r /fw /f /t 0
exit

:No
echo You chose to stop.
echo.
pause
exit

:End
exit