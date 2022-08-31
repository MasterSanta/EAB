################################################################################

Function Show-NowWorkAt {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string] $Action,
        
        [Parameter(Mandatory = $true, Position = 1)]
        [ValidateNotNullOrEmpty()]
        [string] $ThingToSet,
        
        [Parameter(Mandatory = $false, Position = 2)]
        [AllowNull()]
        [string] $ValueToSet,

        [Parameter(Mandatory = $false, Position = 3)]
        [AllowNull()]
        [string] $AdditionalInfo
    )
    Process {
        Write-Host " - $Action " -NoNewline
        Write-Host "`'$ThingToSet`' " -ForegroundColor 'Cyan' -NoNewline
        
        if ($ValueToSet) {
            Write-Host "to " -NoNewline
            Write-Host "`'$ValueToSet`' " -ForegroundColor 'Yellow' -NoNewline
        }
    }
    End {
        if ($AdditionalInfo) {
            Write-Host "($AdditionalInfo) " -ForegroundColor 'DarkGray' -NoNewline
        }
    }
}

Function Show-NowWorkAtSet ($ThingToSet, $ValueToSet, $AdditionalInfo) {
    Show-NowWorkAt -Action "set" -ThingToSet $ThingToSet -ValueToSet $ValueToSet -AdditionalInfo $AdditionalInfo
}

Function Show-NowWorkAtRemove ($ThingToRemove, $AdditionalInfo) {
    Show-NowWorkAt -Action "remove" -ThingToSet $ThingToRemove -ValueToSet $null -AdditionalInfo $AdditionalInfo
}

Function Show-NowWorkAtDisable ($ThingToDisable, $AdditionalInfo) {
    Show-NowWorkAt -Action "disable" -ThingToSet $ThingToDisable -ValueToSet $null -AdditionalInfo $AdditionalInfo
}

Function Show-NowWorkAtConfigure ($ThingToConfigure, $ValueToSet, $AdditionalInfo) {
    Show-NowWorkAt -Action "configure" -ThingToSet $ThingToConfigure -ValueToSet $ValueToSet -AdditionalInfo $AdditionalInfo
}

################################################################################

Function Show-Its {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateSet('OK', 'SKIP', 'ERROR')]
        [string[]]
        $Action,

        [Parameter(Mandatory = $false, Position = 1)]
        [AllowNull()]
        [string] $AdditionalInfo
    )
    Begin {
        switch ($Action) {
            'OK' { 
                $ActionInfoColour = 'Green'
                $AdditionalInfoColour = 'DarkGreen'
            }
            'SKIP' { 
                $ActionInfoColour = 'Yellow'
                $AdditionalInfoColour = 'DarkYellow'
            }
            'ERROR' { 
                $ActionInfoColour = 'Red'
                $AdditionalInfoColour = 'DarkRed'
            }
        }
    }
    Process {
        Write-Host "[$Action] " -ForegroundColor $ActionInfoColour -NoNewline
        if ($AdditionalInfo) {
            Write-Host "($AdditionalInfo) " -ForegroundColor $AdditionalInfoColour -NoNewline
        }
    }
    End {
        Write-Host ""
    }
}

Function Show-ItsOK ($AdditionalInfo) {
    Show-Its -Action 'OK' -AdditionalInfo $AdditionalInfo
}

Function Show-ItsSkip ($AdditionalInfo) {
    Show-Its -Action 'SKIP' -AdditionalInfo $AdditionalInfo
}

Function Show-ItsError ($AdditionalInfo) {
    Show-Its -Action 'ERROR' -AdditionalInfo $AdditionalInfo
}

################################################################################
