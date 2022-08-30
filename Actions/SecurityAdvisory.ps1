################################################################################

Write-Host "[ Configure Security Advisory ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\Registry.ps1
.$PSScriptRoot\..\Tools\Programs.ps1

################################################################################

# Block remote commands https://docs.microsoft.com/en-us/windows/win32/com/enabledcom
Set-Registry "HKLM:\Software\Microsoft\OLE" "EnableDCOM" "String" "N"

#  Computer Configuration > Administrative Templates > System > Early Launch Antimalware > Boot-Start Driver Initialization Policy
Set-Registry "HKLM:\SYSTEM\CurrentControlSet\Policies\EarlyLaunch" "DriverLoadPolicy" "DWORD" 8

# Harden lsass to help protect against credential dumping (Mimikatz)
Set-Registry "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LSASS.exe" "AuditLevel" "DWORD" 8
Set-Registry "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" "RunAsPPL" "DWORD" 1
Set-Registry "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" "DisableRestrictedAdmin" "DWORD" 0
Set-Registry "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" "DisableRestrictedAdminOutboundCreds" "DWORD" 0
Set-Registry "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest" "UseLogonCredential" "DWORD" 0
Set-Registry "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest" "Negotiate" "DWORD" 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CredentialsDelegation" "AllowProtectedCreds" "DWORD" 1

# Enabling Strong Authentication for .NET Framework 3.5
Set-Registry "HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v2.0.50727" "SchUseStrongCrypto" "DWORD" 1
Set-Registry "HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v2.0.50727" "SystemDefaultTlsVersions" "DWORD" 1
Set-Registry "HKLM:\SOFTWARE\Microsoft\.NETFramework\v2.0.50727" "SchUseStrongCrypto" "DWORD" 1
Set-Registry "HKLM:\SOFTWARE\Microsoft\.NETFramework\v2.0.50727" "SystemDefaultTlsVersions" "DWORD" 1

# Enabling Strong Authentication for .NET Framework 4.0/4.5.x
Set-Registry "HKLM:\SOFTWARE\Microsoft\.NETFramework\v4.0.30319" "SchUseStrongCrypto" "DWORD" 1
Set-Registry "HKLM:\SOFTWARE\Microsoft\.NETFramework\v4.0.30319" "SystemDefaultTlsVersions" "DWORD" 1

# Add uBlock to Chrome
Set-Registry "HKLM:\Software\Policies\Google\Chrome\ExtensionInstallWhitelist" "1" "String" "cjpalhdlnbpafiamejdnhcphjbkeiagm"
Set-Registry "HKLM:\Software\Policies\Google\Chrome\ExtensionInstallForcelist" "1" "String" "cjpalhdlnbpafiamejdnhcphjbkeiagm"

################################################################################

# Enable Defender signatures for Potentially Unwanted Applications (PUA)
Set-MpPreference -PUAProtection 'Enable'

# Enable Defender exploit system-wide protection
Set-Processmitigation -System -Enable DEP, EmulateAtlThunks, BottomUp, HighEntropy, SEHOP, SEHOPTelemetry, TerminateOnError

# Disable NTLMv1
Disable-WinFeature "smb1protocol"

# Disable Powershellv2
Disable-WinFeature "MicrosoftWindowsPowerShellV2"
Disable-WinFeature "MicrosoftWindowsPowerShellV2Root"

# Disable WCF
Disable-WinFeature "WCF-Services45"
Disable-WinFeature "WCF-TCP-PortSharing45"

# Disable Internet Explorer
Disable-WinFeature "Internet-Explorer-Optional-amd64"

# Enable Windows Defender sandboxing
Write-Host " - enable Windows Defender sandboxing " -NoNewline
setx /M MP_FORCE_USE_SANDBOX 1 | Out-Null
Write-Host "[OK]" -ForegroundColor 'Green'

# Update signatures
Write-Host " - update Windows Defender signatures " -NoNewline
."$Env:Programfiles\Windows Defender\MpCmdRun.exe" -SignatureUpdate | Out-Null
Write-Host "[OK]" -ForegroundColor 'Green'

################################################################################

Write-Host ""

################################################################################
