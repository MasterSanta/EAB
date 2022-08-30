################################################################################

$ErrorActionPreference = 'Stop'
.$PSScriptRoot\Information.ps1

################################################################################

function Set-Registry([string]$path, [string]$name, [Microsoft.Win32.RegistryValueKind]$type, [System.Object]$value) {
    try {
        Show-NowWorkAtSet -thingToSet $name -valueToSet $value -additionalInfo $type
        if (-not (Test-Path $path)) {
            New-Item -Path $path -Force | Out-Null
        }
        New-ItemProperty -Path $path -Name $name -Value $value -PropertyType $type -Force | Out-Null
        Show-ItsOK
    } catch {
		Show-ItsError
	}
}

function Remove-Registry([string]$path) {
    $regex = '^(?:.*)\\(?<valueName>.*)$'
    try {
        Show-NowWorkAtRemove -thingToRemove ([regex]::Match($path, $regex).Groups["valueName"].Value)
        if (!(Test-Path "$path")) {
            Show-ItsOK -AdditionalInfo "already removed"
            return
        }
        Remove-Item -Path "$path" -Force | Out-Null
        Show-ItsOK
    } catch {
        Show-ItsError
	}
}

################################################################################
