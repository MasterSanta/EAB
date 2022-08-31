################################################################################

.$PSScriptRoot\Information.ps1

################################################################################

Function Set-BCDEdit {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string] $Option,
        
        [Parameter(Mandatory = $true, Position = 1)]
        [ValidateNotNullOrEmpty()]
        [string] $Value
    )
    Begin {
        Show-NowWorkAtSet -ThingToSet $Option -ValueToSet $Value
    }
    Process {
        BCDEdit /set "$Option" "$Value" | Out-Null
    }
    End {
        if ($LastExitCode -eq 0) {
            Show-ItsOK
        }
        else {
            Show-ItsError
        }
    }
}

################################################################################
