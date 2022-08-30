################################################################################

$ErrorActionPreference = 'Stop'
.$PSScriptRoot\Information.ps1

################################################################################

function Disable-Service([string]$serviceName) { 
	Show-NowWorkAtDisable -ThingToDisable $serviceName
    try {
        Get-Service -Name $serviceName | Out-Null
    } catch {
		Show-ItsSkip -AdditionalInfo "not found"
        return
    }
	try {
		Set-Service -Name "$serviceName" -StartupType 'Disabled'
		Stop-Service -Name "$serviceName"
		Show-ItsOK
	} catch {
		Show-ItsError
	}
}

################################################################################
