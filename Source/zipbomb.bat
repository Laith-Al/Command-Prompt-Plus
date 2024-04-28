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