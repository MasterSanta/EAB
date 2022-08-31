################################################################################

$PSDefaultParameterValues.Clear()
Push-Location "$PSScriptRoot"
Clear-Host

################################################################################

.$PSScriptRoot\Tools\UserPermissions.ps1

################################################################################

Write-Host "[ SCRIPT START ]`n" -ForegroundColor 'Green'

if (Get-YouAreAdministrator) {
    .$PSScriptRoot\Actions\AttackSurfaceReductionRules.ps1
    .$PSScriptRoot\Actions\SecurityAdvisory.ps1
    .$PSScriptRoot\Actions\Programs.ps1
    .$PSScriptRoot\Actions\LocalGroupPolicy.ps1
    .$PSScriptRoot\Actions\Edge.ps1
    .$PSScriptRoot\Actions\Services.ps1
    .$PSScriptRoot\Actions\BCDEdit.ps1
    .$PSScriptRoot\Actions\DNS.ps1
    .$PSScriptRoot\Actions\MyComputer.ps1
    .$PSScriptRoot\Actions\WindowsConfiguration.ps1
    .$PSScriptRoot\Actions\Fax.ps1
    .$PSScriptRoot\Actions\MouseAndKeyboard.ps1
    .$PSScriptRoot\Actions\OneDrive.ps1
}

################################################################################

Write-Host "[ SCRIPT END ]`n" -ForegroundColor 'Green'

################################################################################
