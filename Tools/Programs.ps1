################################################################################

.$PSScriptRoot\Information.ps1

################################################################################

Function Remove-ModernUIApp {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string] $AppName
    )
    Begin {
        Show-NowWorkAtRemove -ThingToRemove $AppName
        $AppPackages = Get-AppxPackage -Name "$AppName" -AllUsers
    }
    Process {
        if (-not $AppPackages) {
            Show-ItsSkip -AdditionalInfo "not found"
            return
        }

        try {
            $AppPackages | Remove-AppxPackage *> $null
            Get-AppxProvisionedPackage -Online | Where-Object 'DisplayName' -Like "$AppName" | 
            Remove-AppxProvisionedPackage -Online -LogLevel 'Errors' *> $null
            Show-ItsOK
        }
        catch {
            Show-ItsError
        }
    }
}

Function Uninstall-WinPackage {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string] $AppName
    )
    Begin {
        Show-NowWorkAtRemove -ThingToRemove $AppName
        $WindowsPackages = Get-WindowsPackage -PackageName "*$AppName*" -Online
    }
    Process {
        if (-not $WindowsPackages) {
            Show-ItsSkip -AdditionalInfo "not found"
            return
        }
        if ($WindowsPackages.PackageState -ne 'Installed') {
            Show-ItsOK -AdditionalInfo "already not installed"
            return
        }

        try {
            $WindowsPackages | Remove-WindowsPackage -Online -NoRestart -LogLevel 'Errors' *> $null
            Show-ItsOK
        }
        catch {
            Show-ItsError
        }
    }
}

Function Uninstall-Program {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string] $AppName
    )
    Begin {
        Show-NowWorkAtRemove -ThingToRemove $AppName
        $Win32Product = Get-WmiObject -Class 'Win32_Product' | Where-Object {
            ($_.Name -eq "$AppName") -or ($_.IdentifyingNumber -eq "$AppName")
        }
    }
    Process {
        if (-not $Win32Product.IdentifyingNumber) {
            Show-ItsSkip -AdditionalInfo "not found"
            return
        }

        try {
            $Win32Product.Uninstall() | Out-Null
            Show-ItsOK -AdditionalInfo $Win32Product.Name
        }
        catch {
            Show-ItsError
        }
    }
}

Function Disable-WinFeature {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [string] $FeatureName
    )
    Begin {
        Show-NowWorkAtDisable -ThingToDisable $FeatureName
        $WindowsFeatures = Get-WindowsOptionalFeature -FeatureName "$FeatureName" -Online
    }
    Process {
        if (-not $WindowsFeatures) {
            Show-ItsSkip -AdditionalInfo "not found"
            return
        }
        if ($WindowsFeatures.State -eq 'Disabled') {
            Show-ItsSkip -AdditionalInfo "already disabled"
            return
        }

        try {
            Disable-WindowsOptionalFeature -Online -NoRestart -FeatureName $FeatureName -LogLevel 'Errors' *> $null
            Show-ItsOK
        }
        catch {
            Show-ItsError
        }
    }
}

##############################################################################
