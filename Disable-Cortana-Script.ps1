Write-Host ----------------------------------------------------------------------
Write-Host Disable Cortana Script By Ben
Write-host GitHub: https://github.com/BenJaminL11/
Write-Host ----------------------------------------------------------------------

Write-Host ----------------------------------------------------------------------
Write-Host Are You Sure you want to continue?
Write-Host ----------------------------------------------------------------------
pause

Write-Host "Disabling Cortana"
    $Cortana1 = "HKCU:\SOFTWARE\Microsoft\Personalization\Settings"
    $Cortana2 = "HKCU:\SOFTWARE\Microsoft\InputPersonalization"
    $Cortana3 = "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore"
	If (!(Test-Path $Cortana1)) {
		New-Item $Cortana1
	}
	Set-ItemProperty $Cortana1 AcceptedPrivacyPolicy -Value 0 
	If (!(Test-Path $Cortana2)) {
		New-Item $Cortana2
	}
	Set-ItemProperty $Cortana2 RestrictImplicitTextCollection -Value 1 
	Set-ItemProperty $Cortana2 RestrictImplicitInkCollection -Value 1 
	If (!(Test-Path $Cortana3)) {
		New-Item $Cortana3
	}
	Set-ItemProperty $Cortana3 HarvestContacts -Value 0

Write-Host ----------------------------------------------------------------------
Write-Host "Cortana is now dead *Halo Theme Starts*"
Write-Host ----------------------------------------------------------------------
pause
