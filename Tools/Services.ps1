################################################################################

.$PSScriptRoot\Information.ps1

################################################################################

Function Disable-Service {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string] $ServiceName
    )
    Begin {
        Show-NowWorkAtDisable -ThingToDisable $ServiceName
        $ServiceToDisable = Get-Service | Where-Object -Property 'Name' -eq "$ServiceName"
    }
    Process {
        if ($ServiceToDisable) {
            try {
                $ServiceToDisable | Set-Service -StartupType 'Disabled'
                $ServiceToDisable | Stop-Service
                Show-ItsOK
            }
            catch {
                Show-ItsError
            }
        } 
        else {
            Show-ItsSkip -AdditionalInfo "not found"
        }
    }
}

################################################################################
