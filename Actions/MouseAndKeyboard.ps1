################################################################################

Write-Host "[ Configure mouse and keyboard ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\Registry.ps1

##############################################################################

Write-Host "Config Mouse for current user..."
Set-Registry "HKCU:\Control Panel\Mouse" "MouseSensitivity" "String" "8"
Set-Registry "HKCU:\Control Panel\Mouse" "MouseSpeed" "String" "0"
Set-Registry "HKCU:\Control Panel\Mouse" "MouseThreshold1" "String" "0"
Set-Registry "HKCU:\Control Panel\Mouse" "MouseThreshold2" "String" "0"

Write-Host "Config Mouse globaly..."
Set-Registry "REGISTRY::HKEY_USERS\.DEFAULT\Control Panel\Mouse" "MouseSensitivity" "String" "8"
Set-Registry "REGISTRY::HKEY_USERS\.DEFAULT\Control Panel\Mouse" "MouseSpeed" "String" "0"
Set-Registry "REGISTRY::HKEY_USERS\.DEFAULT\Control Panel\Mouse" "MouseThreshold1" "String" "0"
Set-Registry "REGISTRY::HKEY_USERS\.DEFAULT\Control Panel\Mouse" "MouseThreshold2" "String" "0"

Write-Host "Config Keyboard for current user..."
Set-Registry "HKCU:\Control Panel\Keyboard" "KeyboardDelay" "String" "0"
Set-Registry "HKCU:\Control Panel\Keyboard" "KeyboardSpeed" "String" "31"

Write-Host "Config Keyboard globaly..."
Set-Registry "REGISTRY::HKEY_USERS\.DEFAULT\Control Panel\Keyboard" "KeyboardDelay" "String" "0"
Set-Registry "REGISTRY::HKEY_USERS\.DEFAULT\Control Panel\Keyboard" "KeyboardSpeed" "String" "31"

Write-Host "Turn Off Hotspot 2.0..."
Set-Registry "HKLM:\SOFTWARE\Microsoft\WlanSvc\AnqpCache" "OsuRegistrationStatus" "DWORD" 0

################################################################################

Write-Host ""

################################################################################
