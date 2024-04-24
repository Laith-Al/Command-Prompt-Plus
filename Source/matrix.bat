@echo off
setlocal EnableDelayedExpansion
cls 
title Matix
cls
echo.
echo Would you like to start the matrix?
echo.
echo Press Any Button To start
pause >nul
cls
set chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()
set /a length=%RANDOM% %% 9 + 4

:generate
set matrix=
for /l %%i in (1,1,%length%) do (
    set /a index=%RANDOM% %% 74
    for %%a in (!index!) do set char=!chars:~%%a,1!
    set matrix=!matrix!!char!
)

echo %matrix%

goto generate