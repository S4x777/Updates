echo off
mode con:cols=55 lines=15
powershell -command "$host.ui.RawUI.WindowTitle = 'Updater v1'"
cls

for /f "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do set "esc=%%b"

set "r=%esc%[38;2;255;0;0m"
set "w=%esc%[38;2;255;255;255m"
set "iv=%esc%[7m"
set "st=%esc%[0m"
set "lb=%esc%[38;2;0;255;255m"

:menu
cls
echo DO> login_data.txt
echo BR>> login_data.txt
echo %w% Done ! %st%
echo.
pause > nul