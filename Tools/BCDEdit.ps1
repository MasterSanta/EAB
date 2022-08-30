################################################################################

$ErrorActionPreference = 'Stop'
.$PSScriptRoot\Information.ps1

################################################################################

function Set-BCDEdit([string]$optionToSet, [string]$newValue) {
    Show-NowWorkAtSet -ThingToSet $optionToSet -ValueToSet $newValue

    BCDEdit /set "$optionToSet" "$newValue" | Out-Null

    if ($LastExitCode -eq 0) {
        Show-ItsOK
    } else {
        Show-ItsError
    }
}

################################################################################