################################################################################

$ErrorActionPreference = 'Stop'

################################################################################

function Set-Registry([string]$path, [string]$name, [Microsoft.Win32.RegistryValueKind]$type, [System.Object]$value) {
    try {
        Write-Host " - set " -NoNewline
        Write-Host "$name " -ForegroundColor 'Cyan' -NoNewline 
        Write-Host "to " -NoNewline
        Write-Host "$value " -ForegroundColor 'Yellow' -NoNewline  
        Write-Host "($type) " -ForegroundColor 'DarkGray' -NoNewline
        if (-not (Test-Path $path)) {
            New-Item -Path $path -Force | Out-Null
        }
        New-ItemProperty -Path $path -Name $name -Value $value -PropertyType $type -Force | Out-Null
        Write-Host "[OK]" -ForegroundColor 'Green'
    } catch {
		Write-Host " [ERROR]" -ForegroundColor 'Red'
	}
}

function Remove-Registry([string]$path) {
    $regex = '^(?:.*)\\(?<valueName>.*)$'
    try {
        $value = [regex]::Match($path, $regex).Groups["valueName"].Value
        Write-Host " - remove " -NoNewline
        Write-Host "$value " -ForegroundColor 'Cyan' -NoNewline 
        if (!(Test-Path "$path")) {
            Write-Host "[SKIP]" -ForegroundColor 'Yellow'
            return
        }
        Remove-Item -Path "$path" -Force | Out-Null
        Write-Host "[OK]" -ForegroundColor 'Green'
    } catch {
        Write-Host "[ERROR]" -ForegroundColor 'Red'
	}
}

################################################################################
