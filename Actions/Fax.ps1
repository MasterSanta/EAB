################################################################################

Write-Host "[ Remove Fax ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\Information.ps1

################################################################################

Show-NowWorkAtRemove -ThingToRemove "Fax"

try {
    $printer = Get-Printer | Where-Object -Property 'Name' -eq "Fax"
    if ($printer) {
        Remove-Printer -InputObject $printer
        Show-ItsOK
    }
    else {
        Show-ItsSkip -AdditionalInfo "already removed"
    }
}
catch {
    Show-ItsError
}

################################################################################

Write-Host ""

################################################################################
