@echo off

TITLE Kill All Google Chrome Processess Script By Ben

echo ----------------------------------------------------------------------
echo Kill All Google Chrome Processess Script By Ben
echo GitHub: https://github.com/BenJaminL11/
echo ----------------------------------------------------------------------

echo ----------------------------------------------------------------------
echo Are You Sure you want to continue?
echo ----------------------------------------------------------------------
pause

for /f "tokens=1 delims=" %%# in ('qprocess^|find /i /c /n "chrome"') do (
    set count=%%#
)

taskkill /F /IM chrome.exe /T

echo ----------------------------------------------------------------------
echo Goodbye, Google Chrome, Thanks for the Ram Back!
echo echo Number of Google Chrome processes removed: %count%
echo ----------------------------------------------------------------------
pause
