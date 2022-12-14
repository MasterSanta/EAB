################################################################################

Write-Host "[ Configure DNS ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\UserPermissions.ps1
.$PSScriptRoot\..\Tools\Information.ps1

################################################################################

$ListDNSv4 = @(
    "94.140.14.14",  # AdGuard DNS #1
    "94.140.15.15",  # AdGuard DNS #2
    "8.8.8.8",       # Google DNS #1
    "8.8.4.4"        # Google DNS #2
)
    
$ListDNSv6 = @(
    "2a10:50c0::ad1:ff",     # AdGuard DNS #1
    "2a10:50c0::ad2:ff",     # AdGuard DNS #2
    "2001:4860:4860::8888",  # Google DNS #1
    "2001:4860:4860::8844"   # Google DNS #2
)

$NetAdapters = Get-NetAdapter -Physical | Select-Object -ExpandProperty 'Name' | Get-Unique

if ($NetAdapters) {
    foreach ($Adapter in $NetAdapters) {
        try {
            Show-NowWorkAtConfigure -ThingToConfigure "$Adapter" -AdditionalInfo "IPv4 & IPv6"
            Set-DNSClientServerAddress -InterfaceAlias "$Adapter" -ServerAddresses $ListDNSv4 | Out-Null
            Set-DNSClientServerAddress -InterfaceAlias "$Adapter" -ServerAddresses $ListDNSv6 | Out-Null
            Show-ItsOK
        }
        catch {
            Show-ItsError
        }
    }
}
else {
    Show-ItsSkip -AdditionalInfo "No network adapter was found"
}

################################################################################

Write-Host ""

################################################################################
