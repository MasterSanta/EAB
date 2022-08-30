################################################################################

Write-Host "[ Configure DNS ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\UserPermissions.ps1

################################################################################

if (-not (IsAdministrator)) {
    Write-Host "Not run as " -NoNewline
    Write-Host "Administrator" -ForegroundColor 'Yellow' -NoNewline  
    Write-Host ", skipping... `n"
    return
}

################################################################################

$netAdapters = Get-NetAdapter | Select-Object 'Name'
$currentNextHop = Get-NetRoute -DestinationPrefix "0.0.0.0/0" | Select-Object -ExpandProperty "NextHop" | Get-Unique

$listDNSv4 = @(
    "94.140.14.14",  # AdGuard DNS #1
    "94.140.15.15",  # AdGuard DNS #2
    $currentNextHop, # current "Gateway"
    "8.8.8.8",       # Google DNS #1
    "8.8.4.4"        # Google DNS #2
)

$listDNSv6 = @(
    "2a10:50c0::ad1:ff",     # AdGuard DNS #1
    "2a10:50c0::ad2:ff",     # AdGuard DNS #2
    "2001:4860:4860::8888",  # Google DNS #1
    "2001:4860:4860::8844"   # Google DNS #2
)

foreach ($adapter in $netAdapters) {
    $adapter = $adapter.Name
    Write-Host " - configure " -NoNewline
    Write-Host "$adapter " -ForegroundColor 'Cyan' -NoNewline

    try {
        Write-Host "[IPv4] " -ForegroundColor 'DarkGray' -NoNewline 
        Set-DNSClientServerAddress -InterfaceAlias "$adapter" -ServerAddresses $listDNSv4 | Out-Null
        Write-Host "[IPv6] " -ForegroundColor 'DarkGray' -NoNewline 
        Set-DNSClientServerAddress -InterfaceAlias "$adapter" -ServerAddresses $listDNSv6 | Out-Null
        Write-Host "[OK]" -ForegroundColor 'Green'
    } catch {
        Write-Host " [FAILED]" -ForegroundColor 'Red'
    }
}

################################################################################

Write-Host ""

################################################################################