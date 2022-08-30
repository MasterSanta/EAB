
################################################################################

$ErrorActionPreference = 'Stop'

################################################################################

function Show-NowWorkAt([string]$action, [string]$ThingToSet, $ValueToSet = $null, $AdditionalInfo = $null) {

    Write-Host " - $action " -NoNewline
    Write-Host "`'$thingToSet`' " -ForegroundColor 'Cyan' -NoNewline

    if ($null -ne $valueToSet) {
        Write-Host "to " -NoNewline
        Write-Host "`'$valueToSet`' " -ForegroundColor 'Yellow' -NoNewline
    }

    if ($null -ne $additionalInfo) {
        Write-Host "($additionalInfo) " -ForegroundColor 'DarkGray' -NoNewline
    }
}

function Show-NowWorkAtSet([string]$ThingToSet, $ValueToSet = $null, $AdditionalInfo = $null) {
    Show-NowWorkAt -action "set" -ThingToSet $ThingToSet -ValueToSet $ValueToSet -AdditionalInfo $AdditionalInfo
}

function Show-NowWorkAtRemove([string]$ThingToRemove, $AdditionalInfo = $null) {
    Show-NowWorkAt -action "remove" -ThingToSet $ThingToRemove -ValueToSet $null -AdditionalInfo $AdditionalInfo
}

function Show-NowWorkAtDisable([string]$ThingToDisable, $AdditionalInfo = $null) {
    Show-NowWorkAt -action "disable" -ThingToSet $ThingToDisable -ValueToSet $null -AdditionalInfo $AdditionalInfo
}

function Show-NowWorkAtConfigure([string]$ThingToConfigure, $ValueToSet = $null, $AdditionalInfo = $null) {
    Show-NowWorkAt -action "configure" -ThingToSet $ThingToConfigure -ValueToSet $ValueToSet -AdditionalInfo $AdditionalInfo
}

function Show-ItsOK($AdditionalInfo = $null) {
    Write-Host "[OK] " -ForegroundColor 'Green' -NoNewline
    if ($null -ne $additionalInfo) {
        Write-Host "($additionalInfo) " -ForegroundColor 'DarkGreen' -NoNewline
    }
    Write-Host ""
}

function Show-ItsSkip($AdditionalInfo = $null) {
    Write-Host "[SKIP] " -ForegroundColor 'Yellow' -NoNewline
    if ($null -ne $additionalInfo) {
        Write-Host "($additionalInfo) " -ForegroundColor 'DarkYellow' -NoNewline
    }
    Write-Host ""
}

function Show-ItsError($AdditionalInfo = $null) {
    Write-Host "[ERROR] " -ForegroundColor 'Red' -NoNewline
    if ($null -ne $additionalInfo) {
        Write-Host "($additionalInfo) " -ForegroundColor 'DarkRed' -NoNewline
    }
    Write-Host ""
}

################################################################################