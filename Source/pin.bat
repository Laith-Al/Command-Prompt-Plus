@echo off

setlocal EnableDelayedExpansion

set "chars=1245789"
set "pin="

:generate
set "pin="

for /l %%i in (1,1,4) do (
    set /a index=%RANDOM% %% 10
    for %%a in (!index!) do set "digit=!chars:~%%a,1!"
    set "pin=!pin!!digit!"
)

echo Generated PIN: %pin%

echo.
@echo on