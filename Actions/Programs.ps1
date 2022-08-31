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

Uninstall-Program "{41E85393-7ED3-4C54-AC25-51F8CDF39CDF}" # Windows PC Health Check
Uninstall-Program "{7B1FCD52-8F6B-4F12-A143-361EA39F5E7C}" # Microsoft Update Health Tools

################################################################################

Write-Host ""

################################################################################
