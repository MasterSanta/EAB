################################################################################

Write-Host "[ Configure Windows Settings ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\Registry.ps1

##############################################################################

# When I snap a window, show what I can snap next to it - disable
Set-Registry "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "SnapAssist" DWORD 0

# Remove 'Open in Windows Terminal" context menu for all users
Set-Registry "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" "{9F156763-7844-4DC4-B2B1-901F640F5155}" String ""

# Sticky Keys - disable
Set-Registry "HKCU:\Control Panel\Accessibility\Keyboard Response" "Flags" String "102"
Set-Registry "HKCU:\Control Panel\Accessibility\StickyKeys" "Flags" String "2"
Set-Registry "HKCU:\Control Panel\Accessibility\ToggleKeys" "Flags" String "38"

# Do not let websites access local language list - disable (Group Policy: AutoIt Consulting)
Set-Registry "HKCU:\Control Panel\International\User Profile" "HttpAcceptLanguageOptOut" DWORD 1

# Game Mode - disable
Set-Registry "HKCU:\Software\Microsoft\GameBar" "AllowAutoGameMode" DWORD 0
Set-Registry "HKCU:\Software\Microsoft\GameBar" "AutoGameModeEnabled" DWORD 0

# Inking & Typing Personalization - disable
Set-Registry "HKCU:\Software\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" DWORD 1
Set-Registry "HKCU:\Software\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" DWORD 1
Set-Registry "HKCU:\Software\Microsoft\InputPersonalization\TrainedDataStore" "HarvestContacts" DWORD 0

# Inking & Typing Personalization - disable
Set-Registry "HKCU:\Software\Microsoft\Personalization\Settings" "AcceptedPrivacyPolicy" DWORD 0

# ContentDeliveryManager - configure
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "ContentDeliveryAllowed" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "FeatureManagementEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "OemPreInstalledAppsEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "PreInstalledAppsEverEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SilentInstalledAppsEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SoftLandingEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SystemPaneSuggestionsEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-310093Enabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338388Enabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338389Enabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-338393Enabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353694Enabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353696Enabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" "SubscribedContent-353698Enabled" DWORD 0

# Let Windows track app launches to improve Start and search results - disable (Group Policy: AutoIt Consulting)
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Start_TrackProgs" DWORD 0

# Disable AutoPlay 
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" "DisableAutoplay" DWORD 1

# Search the Web with Bing - disable
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "BingSearchEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" "CortanaConsent" DWORD 0

# Cloud content search - disable
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" "IsAADCloudSearchEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" "IsDeviceSearchHistoryEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" "IsMSACloudSearchEnabled" DWORD 0
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" "SafeSearchMode" DWORD 0

# Let's finish setting up your device - disable
Set-Registry "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" "ScoobeSystemSettingEnabled" DWORD 0

# Configure explorer advanced settings
Set-Registry "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" DWORD 0
Set-Registry "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "HideFileExt" DWORD 0
Set-Registry "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Hidden" DWORD 1
Set-Registry "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "Hidden" DWORD 1
Set-Registry "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "SeparateProcess" DWORD 1
Set-Registry "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "SeparateProcess" DWORD 1
Set-Registry "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowSyncProviderNotifications" DWORD 0
Set-Registry "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "ShowSyncProviderNotifications" DWORD 0
Set-Registry "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "SharingWizardOn" DWORD 0
Set-Registry "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "SharingWizardOn" DWORD 0
Set-Registry "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "LaunchTo" DWORD 1
Set-Registry "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer" "ShowFrequent" DWORD 0

# Dark theme - enable
Set-Registry "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" "AppsUseLightTheme" DWORD 0

# Transparency effects - disable
Set-Registry "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" "EnableTransparency" DWORD 0

# Show accent color on title bars and window borders - enable
Set-Registry "HKCU:\Software\Microsoft\Windows\DWM" "ColorPrevalence" DWORD 1

# Hostspot 2.0 - disable
Set-Registry "HKLM:\SOFTWARE\Microsoft\WlanSvc\AnqpCache" "OsuRegistrationStatus" "DWORD" 0

Write-Host " - disable XPS printing"
Disable-WindowsOptionalFeature -Online -FeatureName 'Printing-XPSServices-Features' | Out-Null

################################################################################

Write-Host ""

################################################################################
