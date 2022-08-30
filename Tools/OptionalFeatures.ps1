##############################################################################

$ErrorActionPreference = 'Stop'
.$PSScriptRoot\Information.ps1

################################################################################

function Disable-WinFeature([string]$featureName) {
	Show-NowWorkAtDisable -ThingToDisable $featureName

    $featuresToDisable = Get-WindowsOptionalFeature -Online | Where-Object FeatureName -eq "$featureName"

    if ($null -eq $featuresToDisable) {
        Show-ItsSkip -AdditionalInfo "not found"
        return
    }

    if ($featuresToDisable.State -eq 'Disabled') {
        Show-ItsSkip -AdditionalInfo "already disabled"
        return
    }

    try {
        Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName $featureName | Out-Null
		Show-ItsOK
	} catch {
		Show-ItsError
	}
}

##############################################################################
