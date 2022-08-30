################################################################################

Write-Host "[ Remove Fax ... ]" -ForegroundColor 'Magenta'

################################################################################

Write-Host " - remove " -NoNewline
Write-Host "`'Fax`' " -ForegroundColor 'Cyan' -NoNewline

try {
    $printer = Get-Printer | Where-Object -Property Name -eq "Fax"
    if ($null -eq $printer) {
        Show-ItsSkip -AdditionalInfo "already removed"
        return
    }
    Remove-Printer -InputObject $printer
    Write-Host "[OK]" -ForegroundColor 'Green'
} catch {
    Write-Host " [FAILED]" -ForegroundColor 'Red'
}

################################################################################

Write-Host ""

################################################################################
