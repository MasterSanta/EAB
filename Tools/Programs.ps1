################################################################################

$ErrorActionPreference = 'Stop'

################################################################################

function Remove-ModernUIApp([string]$appName) { 
    Write-Host " - remove " -NoNewline
    Write-Host "$appName " -ForegroundColor 'Cyan' -NoNewline 
	try {
		$appPackage = Get-AppxPackage -AllUser "$appName"
		if ($appPackage.length -eq 0) {
			Write-Host "[SKIP]" -ForegroundColor 'Yellow'
			return
		}
		Get-AppxPackage -AllUsers "$appName" | Remove-AppxPackage | Out-Null
		Get-AppxProvisionedPackage -Online | Where-Object 'DisplayName' -Like "$appName" | Remove-AppxProvisionedPackage -Online -LogLevel 'Errors' | Out-Null
		Write-Host "[OK]" -ForegroundColor 'Green'
	} catch {
		Write-Host " [ERROR]" -ForegroundColor 'Red'
	}
}

function Uninstall-Program([string]$appName){
	Write-Host " - remove " -NoNewline
	Write-Host "$appName " -ForegroundColor 'Cyan' -NoNewline 

	try {
		$MyApp = Get-WmiObject -Class 'Win32_Product' | Where-Object { $_.Name -eq "$appName" }
		if ($null -eq $MyApp.IdentifyingNumber) {
			Write-Host "[SKIP]" -ForegroundColor 'Yellow'
			return
		}
		$MyApp.Uninstall() | Out-Null
		Write-Host "[OK]" -ForegroundColor 'Green'
	} catch {
		Write-Host " [ERROR]" -ForegroundColor 'Red'
	}
}

##############################################################################
