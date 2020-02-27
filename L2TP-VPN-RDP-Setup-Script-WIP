# Run PowerShell as Administrator
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Write-Host ----------------------------------------------------------------------
Write-Host L2TP VPN RDP SETUP SCRIPT By Ben
Write-host GitHub: https://github.com/BenJaminL11/
Write-Host ----------------------------------------------------------------------

Write-Host ----------------------------------------------------------------------
Write-Host WHAT DOSE THIS SCRIPT DO?
Write-Host 1.Makes a L2TP VPN Connection To **LocationNameHere**
Write-Host 2.Connects to L2TP VPN that was just created for **LocationNameHere**
Write-Host 3.Runs Remote Desktop and Connects you to Terminal/RemotePC
Write-Host -----------------------------------------------------------------------

Write-Host ----------------------------------------------------------------------
Write-Host Do you want to keep going with this setup?
Write-Host ----------------------------------------------------------------------
pause 

Write-Host ----------------------------------------------------------------------
# Add Users VPN Details here 
Write-Host NOW ADDING L2TP VPN
Add-VpnConnection -Name "VPNNAMEHERE" -ServerAddress "VPNADDRESSHERE" -TunnelType L2TP -L2tpPsk "L2TPPASSWORD" -Force -AuthenticationMethod MSChapv2 -UseWinlogonCredential -SplitTunneling $True -EncryptionLevel "Optional"
Write-Host ----------------------------------------------------------------------

Write-Host ----------------------------------------------------------------------
# Make Sure The VPN Name is correct here
Write-Host NOW CONNECTING L2TP VPN
$vpnName = "VPNNAMEHERE";
$vpn = Get-VpnConnection -Name $VPNNAMEHERE;
if($vpn.ConnectionStatus -eq "Disconnected"){
rasdial $vpnName;
}
Write-Host ----------------------------------------------------------------------

Write-Host ----------------------------------------------------------------------
# RDP Details - UN/PW/IP Etc 
Write-Host Now Opening RDP Session
Write-Host "Connecting to Remote/Terminal PC"
$Server="NETBIOS/IP"
$User="Domain\Username"
$Password="PASSWORD"
cmdkey /generic:TERMSRV/$Server /user:$User /pass:$Password
mstsc /v:$Server
Write-Host ----------------------------------------------------------------------
