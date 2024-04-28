::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBdVRRCKAES0A5EO4f7+086IoVgQUewra7P806CmNeIvyUrpeJcj0jdqisQBHA8VTh6+fTMZqH1Ws3a6AcKOoAbuRHSq6UY9GmtwuFPCgyYrdOxYltYQ7Ba77l72kKtBnyHAa4ciOkDK5IhUOsAP7kSxcEyo
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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