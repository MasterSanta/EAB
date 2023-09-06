################################################################################

Write-Host "[ Configure attack surface reduction rules ... ]" -ForegroundColor 'Magenta'

################################################################################

# https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules-reference?view=o365-worldwide

################################################################################

Write-Host " - Block process creations originating from PSExec and WMI commands"
Add-MpPreference -AttackSurfaceReductionRules_Ids "d1e49aac-8f56-4280-b9ba-993a6d77406c" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block all Office applications from creating child processes"
Add-MpPreference -AttackSurfaceReductionRules_Ids "D4F940AB-401B-4EFC-AADC-AD5F3C50688A" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block Office communication application from creating child processes"
Add-MpPreference -AttackSurfaceReductionRules_Ids "26190899-1602-49e8-8b27-eb1d0a1ce869" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block Office applications from injecting code into other processes"
Add-MpPreference -AttackSurfaceReductionRules_Ids "75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block Win32 API calls from Office macro"
Add-MpPreference -AttackSurfaceReductionRules_Ids "92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block Office applications from creating executable content"
Add-MpPreference -AttackSurfaceReductionRules_Ids "3B576869-A4EC-4529-8536-B80A7769E899" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block execution of potentially obfuscated scripts"
Add-MpPreference -AttackSurfaceReductionRules_Ids "5BEB7EFE-FD9A-4556-801D-275E5FFC04CC" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block executable content from email client and webmail"
Add-MpPreference -AttackSurfaceReductionRules_Ids "BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block JavaScript or VBScript from launching downloaded executable content"
Add-MpPreference -AttackSurfaceReductionRules_Ids "D3E037E1-3EB8-44C8-A917-57927947596D" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Use advanced protection against ransomware"
Add-MpPreference -AttackSurfaceReductionRules_Ids "C1DB55AB-C21A-4637-BB3F-A12568109D35" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block Win32 API calls from Office macros"
Add-MpPreference -AttackSurfaceReductionRules_Ids "92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block credential stealing from the Windows local security authority subsystem (lsass.exe)"
Add-MpPreference -AttackSurfaceReductionRules_Ids "9E6C4E1F-7D60-472F-BA1A-A39EF669E4B2" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host " - Block untrusted and unsigned processes that run from USB"
Add-MpPreference -AttackSurfaceReductionRules_Ids "B2B3F03D-6A65-4F7B-A9C7-1C7EF74A9BA4" -AttackSurfaceReductionRules_Actions 'Enabled'

Write-Host "[DONE]" -ForegroundColor 'Green'

################################################################################

Write-Host ""

################################################################################
