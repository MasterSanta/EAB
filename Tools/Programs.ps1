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
		UninstallProgram-Package -Name "$appName" -Force | Out-Null
	} catch {}
	Write-Host "[OK]" -ForegroundColor 'Green'
}

##############################################################################
