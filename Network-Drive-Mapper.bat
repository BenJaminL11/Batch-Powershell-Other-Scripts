@echo off

TITLE Network Drive Mapper Script By Ben

echo ----------------------------------------------------------------------
echo Network Drive Mapper Script By Ben
echo GitHub: https://github.com/BenJaminL11/
echo ----------------------------------------------------------------------

pause

:: Example:
:: net use directory D: \\MyServer\Documents /user:user1 1234

net use DIRECTORY: \\PATH-NETWORK-SHARE\FOLDER-NAME /user:YOUR-USERNAME YOUR-PASSWORD
net use DIRECTORY: \\PATH-NETWORK-SHARE\FOLDER-NAME /user:YOUR-USERNAME YOUR-PASSWORD
net use DIRECTORY: \\PATH-NETWORK-SHARE\FOLDER-NAME /user:YOUR-USERNAME YOUR-PASSWORD
net use DIRECTORY: \\PATH-NETWORK-SHARE\FOLDER-NAME /user:YOUR-USERNAME YOUR-PASSWORD
net use DIRECTORY: \\PATH-NETWORK-SHARE\FOLDER-NAME /user:YOUR-USERNAME YOUR-PASSWORD

echo ----------------------------------------------------------------------
echo Network Drives Have Been Mapped
echo ----------------------------------------------------------------------
pause
