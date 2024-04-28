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
::Zh4grVQjdCyDJGyX8VAjFBdVRRCKAES0A5EO4f7+086IoVgQUewra7P806CmNeIvyUrpeJcj0jdqisQBHA8VTh6+fTMZqH1Ws3a6AcKOoAbuRHSq6UY9GmtwuFPCgyYrdOxYltYQ7Ba77l72kKtBnyHAa4ciOkDK5IhUIsAQ/wW5agfNgrY1
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cls
title ZipBOMB
color 4
if not exist "C:\Program Files\7-Zip" (
	echo 7-Zip not installed! Please Install It To Use ZipBOMB
	pause
	exit
)
echo.
echo -------------------------------
echo ZipBOMB - Command Prompt Plus
echo -------------------------------
echo.
set /p archive="Enter Archive Directory: "
if not exist "%archive%" (
	echo Archive not found! Remove The "" if you are using drag and drop.
	pause
	exit
)

set /p wordlist="Enter Wordlist (Use passlist.txt): "
if not exist "%wordlist%" (
	echo Wordlist not found!
	pause
	exit
)
echo Cracking...
for /f %%a in (%wordlist%) do (
	set pass=%%a
	call :attempt
)
echo Enter "Passlist.txt" or use other word list
pause
exit

:attempt
"C:\Program Files\7-Zip\7z.exe" x -p%pass% "%archive%" -o"cracked" -y >nul 2>&1
echo ATTEMPTED PASSWORD: %pass%
if /I %errorlevel% EQU 0 (
	echo.
    echo -------------------------------
    echo Success! Password Found: %pass%
    echo -------------------------------
    echo.
	pause
	exit
)