################################################################################

Write-Host "[ Configure BCDEdit ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\BCDEdit.ps1

################################################################################

# https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/bcdedit

################################################################################

Set-BCDEdit -Option "nx" -Value "AlwaysOn"
Set-BCDEdit -Option "recoveryenabled" -Value "No"
Set-BCDEdit -Option "nointegritychecks" -Value "No"

################################################################################

Write-Host ""

################################################################################
