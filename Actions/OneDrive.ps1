################################################################################

Write-Host "[ Remove OneDrive ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\Registry.ps1

################################################################################

Write-Host " - stop " -NoNewline
Write-Host "OneDrive " -ForegroundColor 'Cyan' -NoNewline
Write-Host "and " -NoNewline
Write-Host "Explorer " -ForegroundColor 'Cyan' -NoNewline
Get-Process | Where-Object 'ProcessName' -eq "OneDrive" | Stop-Process | Out-Null
Get-Process | Where-Object 'ProcessName' -eq "explorer" | Stop-Process | Out-Null
Write-Host "[OK]" -ForegroundColor 'Green'

Write-Host " - run " -NoNewline
Write-Host "'OneDriveSetup.exe /uninstall' " -ForegroundColor 'Cyan' -NoNewline
if (Test-Path "$env:systemroot\System32\OneDriveSetup.exe") {
    & "$env:systemroot\System32\OneDriveSetup.exe" /uninstall
}
if (Test-Path "$env:systemroot\SysWOW64\OneDriveSetup.exe") {
    & "$env:systemroot\SysWOW64\OneDriveSetup.exe" /uninstall
}
Write-Host "[OK]" -ForegroundColor 'Green'

# "Remove Onedrive from explorer sidebar"
Set-Registry "REGISTRY::HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" "System.IsPinnedToNameSpaceTree" "DWORD" 0

# "Removing startmenu junk entry"
Write-Host " - remove links... " -NoNewline
Remove-Item -Force -ErrorAction 'SilentlyContinue' "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk"
Write-Host "[OK]" -ForegroundColor 'Green'

################################################################################

Write-Host ""

################################################################################
