################################################################################

.$PSScriptRoot\Information.ps1

################################################################################

Function Set-Registry {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string] $Path,
        
        [Parameter(Mandatory = $true, Position = 1)]
        [ValidateNotNullOrEmpty()]
        [string] $Name,
        
        [Parameter(Mandatory = $true, Position = 2)]
        [ValidateNotNullOrEmpty()]
        [Microsoft.Win32.RegistryValueKind] $Type,
        
        [Parameter(Mandatory = $true, Position = 3)]
        [AllowNull()]
        [System.Object] $Value        
    )
    Begin {
        Show-NowWorkAtSet -ThingToSet $Name -ValueToSet $Value -AdditionalInfo $Type
    }
    Process {
        if (-not (Test-Path $Path)) {
            New-Item -Path $Path -Force | Out-Null
        }

        try {
            New-ItemProperty -Path $Path -Name $Name -Value $Value -PropertyType $Type -Force | Out-Null
            Show-ItsOK
        }
        catch {
            Show-ItsError
        }
    }
}

Function Remove-Registry {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string] $Path
    )
    Begin {
        $Regex = '^(?:.*)\\(?<valueName>.*)$'
        $ValueName = [regex]::Match($Path, $Regex).Groups["valueName"].Value
        Show-NowWorkAtRemove -ThingToRemove $ValueName
    }
    Process {
        if (Test-Path "$Path") {
            try {
                Remove-Item -Path "$Path" -Force | Out-Null
                Show-ItsOK
            }
            catch {
                Show-ItsError
            }
        }
        else {
            Show-ItsOK -AdditionalInfo "already removed"
        }
    }
}

################################################################################
