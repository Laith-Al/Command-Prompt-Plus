@echo off
echo.
:: Get public IP address
for /f "tokens=2 delims=: " %%a in ('nslookup myip.opendns.com resolver1.opendns.com 2^>nul ^| findstr /i "Address"') do set public_ip=%%a
echo Public IP Address: %public_ip%
echo.
@echo on