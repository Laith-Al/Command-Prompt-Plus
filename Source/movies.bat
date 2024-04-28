@echo off
cls
Title Movie's - Backed by Mschif
cls
Color A
cls
echo.
echo Movie's - By Mschif
echo.
echo Would You Like To Watch A Movie?
echo.
echo Requirements: Ability For Computer To Access SSH 
echo.
echo (Movies Are Completely Random and change every day!)
echo.
echo Press Any Key To Watch:
pause >nul
ssh -o StrictHostKeyChecking=no watch.ascii.theater
echo The Movie Has Finished! Please Exit
pause
exit