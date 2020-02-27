@echo off

TITLE Restart Print Spooler Script By Ben

echo ----------------------------------------------------------------------
echo Restart Print spooler Script By Ben
echo GitHub: https://github.com/BenJaminL11/
echo ----------------------------------------------------------------------

echo ----------------------------------------------------------------------
echo Are You Sure you want to continue?
echo ----------------------------------------------------------------------
pause

powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,net stop spooler & DEL /F /S /Q %systemroot%\System32\spool\PRINTERS\* & net start spooler' -Verb runAs"

echo ----------------------------------------------------------------------
echo Print Spooler Service has been restarted
echo ----------------------------------------------------------------------
pause
