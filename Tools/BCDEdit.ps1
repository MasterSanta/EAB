################################################################################

$ErrorActionPreference = 'Stop'

################################################################################

function Set-BCDEdit([string]$optionToSet, [string]$newValue) {
    Write-Host " - set " -NoNewline
    Write-Host "`'$optionToSet`' " -ForegroundColor 'Cyan' -NoNewline
    Write-Host "to " -NoNewline
    Write-Host "`'$newValue`' " -ForegroundColor 'Yellow' -NoNewline
    try {
        BCDEdit /set "$optionToSet" "$newValue"
    } catch {
		Write-Host " [ERROR]" -ForegroundColor 'Red'
    }
}

################################################################################
