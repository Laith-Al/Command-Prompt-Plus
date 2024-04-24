@echo off

rem Check if Python is installed
python --version >nul 2>&1
if %errorlevel% equ 0 (
    rem Python is installed
    echo Python is installed on your system

    rem Check Python version
    for /f "tokens=2 delims= " %%v in ('python --version 2^>^&1') do set python_version=%%v

    rem Check if the installed version is the latest
    python -c "import sys; print(sys.version_info >= (3, 10))"
    if %errorlevel% equ 0 (
        echo You have the latest version of Python (%python_version%)
    ) else (
        echo You have an older version of Python (%python_version%) The latest version is available for download.
    )
) else (
    rem Python is not installed
    echo Python is not installed on your system
    set /p install_python=Do you want to install Python? (yes/no): 
    if /i "%install_python%"=="yes" (
        rem Download Python installer
        echo Downloading Python installer...
        powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe', 'python-3.10.0-amd64.exe')"

        rem Install Python
        echo Installing Python...
        start /wait python-3.10.0-amd64.exe

        rem Clean up
        del python-3.10.0-amd64.exe
    ) else (
        echo Python installation aborted.
    )
)

pause