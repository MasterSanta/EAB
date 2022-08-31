################################################################################

Function Get-YouAreAdministrator {
    [CmdletBinding()]
    Param ()
    Begin {
        $CurrentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
        $IsInAdminRole = $CurrentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
    }
    Process {
        if (-not $IsInAdminRole) {
            Write-Host "The script requires " -NoNewline
            Write-Host "Administrator " -ForegroundColor 'Yellow' -NoNewline
            Write-Host "privileges to work properly. Please restart it with elevated privileges."
            Write-Host "Exiting now!" -ForegroundColor 'Red'
            Write-Host ""
        }
    }
    End {
        $IsInAdminRole
    }
}

################################################################################
