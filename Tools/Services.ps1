################################################################################

$ErrorActionPreference = 'Stop'

################################################################################

function Disable-Service([string]$serviceName) { 
	Write-Host " - disable service " -NoNewline
	Write-Host "'$serviceName' " -ForegroundColor 'Cyan' -NoNewline 
    try {
        Get-Service -Name $serviceName | Out-Null
    } catch {
		Write-Host "[SKIP]" -ForegroundColor 'Yellow'
        return
    }
	try {
		Set-Service -Name "$serviceName" -StartupType 'Disabled'
		Stop-Service -Name "$serviceName"
		Write-Host "[OK]" -ForegroundColor 'Green'
	} catch {
		Write-Host " [FAILED]" -ForegroundColor 'Red'
	}
}

################################################################################
