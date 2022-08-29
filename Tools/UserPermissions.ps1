################################################################################

$ErrorActionPreference = 'Stop'

################################################################################

function IsAdministrator() {
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    $results = $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    return $results
}

################################################################################
