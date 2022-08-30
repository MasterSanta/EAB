################################################################################

$ErrorActionPreference = 'Stop'

################################################################################

function Set-BCDEdit([string]$optionToSet, [string]$newValue) {
    Write-Host " - set " -NoNewline
    Write-Host "`'$optionToSet`' " -ForegroundColor 'Cyan' -NoNewline
    Write-Host "to " -NoNewline
    Write-Host "`'$newValue`' " -ForegroundColor 'Yellow' -NoNewline

    BCDEdit /set "$optionToSet" "$newValue" | Out-Null

    if ($LastExitCode -eq 0) {
        Write-Host "[OK]" -ForegroundColor 'Green'
    } else {
        Write-Host " [ERROR]" -ForegroundColor 'Red'
    }
}

################################################################################