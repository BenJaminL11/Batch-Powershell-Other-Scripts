echo off

TITLE Simple Network Fixer Script By Ben

echo ----------------------------------------------------------------------
echo Simple Network Fixer Script By Ben
echo GitHub: https://github.com/BenJaminL11/
echo ----------------------------------------------------------------------

echo ----------------------------------------------------------------------
echo Are You Sure you want to continue?
echo ----------------------------------------------------------------------
pause

ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns

echo ----------------------------------------------------------------------
echo Network Should Be Fixed Now!
echo ----------------------------------------------------------------------
pause
