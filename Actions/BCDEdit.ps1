################################################################################

Write-Host "[ Configure BCDEdit ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\BCDEdit.ps1

################################################################################

# https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/bcdedit

################################################################################

Set-BCDEdit "nx" 'AlwaysOn'
Set-BCDEdit "recoveryenabled" 'No'
Set-BCDEdit "nointegritychecks" 'No'

################################################################################

Write-Host ""

################################################################################
