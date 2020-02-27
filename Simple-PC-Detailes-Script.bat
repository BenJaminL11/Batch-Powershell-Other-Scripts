@ECHO OFF 

echo ----------------------------------------------------------------------
echo Simple PC Detailes By Ben
echo GitHub: https://github.com/BenJaminL11/
echo ----------------------------------------------------------------------

TITLE Simple PC Detailes By Ben

echo ----------------------------------------------------------------------
echo Are You Sure you want to continue?
echo ----------------------------------------------------------------------
pause

ECHO Please wait... Checking system information.

ECHO ----------------------------
ECHO Operating System INFO
ECHO ----------------------------
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"

ECHO ----------------------------
ECHO PHYSICAL HARDWARE INFO
ECHO ----------------------------
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name

ECHO ----------------------------
ECHO NETWORK INFO
ECHO ----------------------------
ipconfig | findstr IPv4
ipconfig | findstr IPv6

echo ----------------------------------------------------------------------
echo You Now Have Your Simple System Details
echo ----------------------------------------------------------------------
pause
