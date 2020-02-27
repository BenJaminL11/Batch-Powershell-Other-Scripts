@echo off

TITLE Fix Time Sync Issues Script By Ben

echo ----------------------------------------------------------------------
echo Fix Time Sync Issues By Ben
echo GitHub: https://github.com/BenJaminL11/
echo ----------------------------------------------------------------------

echo ----------------------------------------------------------------------
echo Are You Sure you want to continue?
echo ----------------------------------------------------------------------
pause

net stop w32time && net start w32time
w32tm.exe /resync /rediscover

echo ----------------------------------------------------------------------
echo Your Time Sync Issues Should be fixed now!
echo ----------------------------------------------------------------------
pause
