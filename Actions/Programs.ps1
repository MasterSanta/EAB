################################################################################

Write-Host "[ Unisntall programs ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\Programs.ps1

##############################################################################

Remove-ModernUIApp "Microsoft.Getstarted"
Remove-ModernUIApp "Microsoft.MSPaint"
Remove-ModernUIApp "Microsoft.Microsoft3DViewer"
Remove-ModernUIApp "Microsoft.MicrosoftOfficeHub"
Remove-ModernUIApp "Microsoft.MicrosoftSolitaireCollection"
Remove-ModernUIApp "Microsoft.MixedReality.Portal"
Remove-ModernUIApp "Microsoft.Office.OneNote"
Remove-ModernUIApp "Microsoft.OneConnect"
Remove-ModernUIApp "Microsoft.Print3D"
Remove-ModernUIApp "Microsoft.SkypeApp"
Remove-ModernUIApp "Microsoft.WindowsFeedbackHub"
Remove-ModernUIApp "Microsoft.Xbox.TCUI"
Remove-ModernUIApp "Microsoft.XboxApp"
Remove-ModernUIApp "Microsoft.ZuneMusic"
Remove-ModernUIApp "Microsoft.ZuneVideo"
Remove-ModernUIApp "Microsoft.549981C3F5F10"
Remove-ModernUIApp "Microsoft.GetHelp"
Remove-ModernUIApp "Microsoft.YourPhone"
Remove-ModernUIApp "Microsoft.People"
Remove-ModernUIApp "Microsoft.WindowsMaps"
Remove-ModernUIApp "Microsoft.Messaging"
Remove-ModernUIApp "Microsoft.MicrosoftStickyNotes"
Remove-ModernUIApp "Microsoft.Windows.Photos"
Remove-ModernUIApp "microsoft.windowscommunicationsapps"
Remove-ModernUIApp "Microsoft.3DBuilder"
Remove-ModernUIApp "Microsoft.BingFinance"
Remove-ModernUIApp "Microsoft.BingNews"
Remove-ModernUIApp "Microsoft.BingSports"
Remove-ModernUIApp "Microsoft.BingWeather"
Remove-ModernUIApp "Microsoft.WindowsPhone"

################################################################################

Uninstall-Program "Windows PC Health Check"
Uninstall-Program "Microsoft Update Health Tools"

################################################################################

Write-Host ""

################################################################################
