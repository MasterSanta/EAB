################################################################################

$ErrorActionPreference = 'Stop'
.$PSScriptRoot\Information.ps1

################################################################################

function Remove-ModernUIApp([string]$appName) { 
	Show-NowWorkAtRemove -thingToRemove $appName
	try {
		$appPackage = Get-AppxPackage -AllUser "$appName"
		if ($null -eq $appPackage) {
			Show-ItsSkip -AdditionalInfo "not found"
			return
		}
		Get-AppxPackage -AllUsers "$appName" | Remove-AppxPackage | Out-Null
		Get-AppxProvisionedPackage -Online | Where-Object 'DisplayName' -Like "$appName" | Remove-AppxProvisionedPackage -Online -LogLevel 'Errors' | Out-Null
		Show-ItsOK
	} catch {
		Show-ItsError
	}
}

function Uninstall-WinPackage([string]$appName) {
	Show-NowWorkAtRemove -thingToRemove $appName

	try {
		$installedPackage = Get-WindowsPackage -Online | Where-Object 'PackageName' -Like "*$appName*"
		if ($null -eq $installedPackage) {
			Show-ItsSkip -AdditionalInfo "not found"
			return
		}
		if ($installedPackage.PackageState -ne 'Installed') {
			Show-ItsOK -AdditionalInfo "already not installed"
			return
		}		
		$installedPackage | Remove-WindowsPackage -Online -NoRestart | Out-Null
		Show-ItsOK
	} catch {
		Show-ItsError
	}
}

function Uninstall-Program([string]$appName){
	Show-NowWorkAtRemove -thingToRemove $appName

	try {
		$MyApp = Get-WmiObject -Class 'Win32_Product' | Where-Object { $_.Name -eq "$appName" }
		if ($null -eq $MyApp?.IdentifyingNumber) {
			Show-ItsSkip -AdditionalInfo "not found"
			return
		}
		$MyApp.Uninstall() | Out-Null
		Show-ItsOK
	} catch {
		Show-ItsError
	}
}

##############################################################################
