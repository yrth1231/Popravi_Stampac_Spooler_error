@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)
net start spooler
echo.
echo Gotovo. Stampac bi sada trebalo da radi.
echo Restartujte program gde ste probali da stampate ako i dalje ne ucitava stampace.
timeout /t 30 >nul
