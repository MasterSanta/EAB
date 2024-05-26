################################################################################

Write-Host "[ Configure Local Group Policy ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\Registry.ps1

################################################################################

# https://admx.help/?Category=Windows_10_2016

################################################################################

# Computer Configuration > Administrative Templates > Control Panel > Allow Online Tips
Set-Registry "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "AllowOnlineTips" DWORD 0

# Computer Configuration > Administrative Templates > Control Panel > Regional and Language Options > Allow users to enable online speech recognition services
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization" "AllowInputPersonalization" DWORD 0

# Computer Configuration > Administrative Templates > Control Panel > Regional and Language Options > Handwriting personalization > Turn off automatic learning
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitInkCollection" DWORD 1

# Computer Configuration > Administrative Templates > Control Panel > Regional and Language Options > Handwriting personalization > Turn off automatic learning
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization" "RestrictImplicitTextCollection" DWORD 1

# Computer Configuration > Administrative Templates > Network > WLAN Service > WLAN Settings > Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services
Set-Registry "HKLM:\Software\Microsoft\WcmSvc\wifinetworkmanager\config" "AutoConnectAllowedOEM" DWORD 0

# Computer Configuration > Administrative Templates > Start Menu and Taskbar > Do not keep history of recently opened documents
Set-Registry "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoRecentDocsHistory" DWORD 1

# Computer Configuration > Administrative Templates > Start Menu and Taskbar > Remove "Recently added" list from Start Menu
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\Explorer" "HideRecentlyAddedApps" DWORD 1

# Computer Configuration > Administrative Templates > Start Menu and Taskbar > Show or hide "Most used" list from Start menu (Win11)
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\Explorer" "ShowOrHideMostUsedApps" DWORD 2

# Computer Configuration > Administrative Templates > System > Internet Communication Management > Internet Communication settings > Turn off handwriting recognition error reporting
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" "PreventHandwritingErrorReports" DWORD 1

# Computer Configuration > Administrative Templates > System > Internet Communication Management > Internet Communication settings > Turn off handwriting personalization data sharing
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\TabletPC" "PreventHandwritingDataSharing" DWORD 1

# Computer Configuration > Administrative Templates > System > OS Policies > Allow Clipboard History
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" "AllowClipboardHistory" DWORD 0

# Computer Configuration > Administrative Templates > System > OS Policies > Allow Clipboard synchronization across devices
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" "AllowCrossDeviceClipboard" DWORD 0

# Computer Configuration > Administrative Templates > System > OS Policies > Enables Activity Feed
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" "EnableActivityFeed" DWORD 0

# Computer Configuration > Administrative Templates > System > OS Policies > Allow publishing of User Activities
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" "PublishUserActivities" DWORD 0

# Computer Configuration > Administrative Templates > System > OS Policies > Allow upload of User Activities
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" "UploadUserActivities" DWORD 0

# Computer Configuration > Administrative Templates > System > Troubleshooting and Diagnostics > Windows Shutdown Performance Diagnostics > Configure Scenario Execution Level
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" "ScenarioExecutionEnabled" DWORD 0

# Computer Configuration > Administrative Templates > System > User Profiles > Turn off the advertising ID
Set-Registry "HKLM:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" "Enabled" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > App Privacy > Let Windows apps activate with voice
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsActivateWithVoice" DWORD 2

# Computer Configuration > Administrative Templates > Windows Components > App Privacy > Let Windows apps activate with voice while the system is locked
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsActivateWithVoiceAboveLock" DWORD 2

# Computer Configuration > Administrative Templates > Windows Components > App Privacy > Let Windows apps access account information
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsAccessAccountInfo" DWORD 2
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsAccessAccountInfo_ForceAllowTheseApps" MultiString ""
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsAccessAccountInfo_ForceDenyTheseApps" MultiString ""
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsAccessAccountInfo_UserInControlOfTheseApps" MultiString ""

# Computer Configuration > Administrative Templates > Windows Components > App Privacy > Let Windows apps access diagnostic information about other apps
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsGetDiagnosticInfo" DWORD 2
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsGetDiagnosticInfo_ForceAllowTheseApps" MultiString ""
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsGetDiagnosticInfo_ForceDenyTheseApps" MultiString ""
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\AppPrivacy" "LetAppsGetDiagnosticInfo_UserInControlOfTheseApps" MultiString ""

# Computer Configuration > Administrative Templates > Windows Components > Application Compatibility > Turn off Application Telemetry
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AppCompat" "AITEnable" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > AutoPlay Policies > Turn off Autoplay
Set-Registry "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" "NoDriveTypeAutoRun" DWORD 255

# Computer Configuration > Administrative Templates > Windows Components > Cloud Content > Do not show Windows tips
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableSoftLanding" DWORD 1

# Computer Configuration > Administrative Templates > Windows Components > Cloud Content > Turn off Microsoft consumer experiences
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" "DisableWindowsConsumerFeatures" DWORD 1

# Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds >  Allow commercial data pipeline
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" "AllowCommercialDataPipeline" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Allow device name to be sent in Windows diagnostic data
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" "AllowDeviceNameInTelemetry" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Allow Telemetry
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" "AllowTelemetry" DWORD 1

# Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Do not show feedback notifications
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" "DoNotShowFeedbackNotifications" DWORD 1

# Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Limit Enhanced diagnostic data to the minimum required by Windows Analytics
Set-Registry "HKLM:\Software\Policies\Microsoft\Windows\DataCollection" "LimitEnhancedDiagnosticDataWindowsAnalytics" DWORD 1

# Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Toggle user control over Insider builds
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PreviewBuilds" "AllowBuildPreview" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Delivery Optimization > Download Mode
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" "DODownloadMode" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Internet Explorer > Allow Microsoft services to provide enhanced suggestions as the user types in the Address bar
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer" "AllowServicePoweredQSA" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Internet Explorer > Internet Control Panel > Advanced Page > Turn off the flip ahead with page prediction feature
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\FlipAhead" "Enabled" DWORD 1

# Computer Configuration > Administrative Templates > Windows Components > Internet Explorer > Turn on Suggested Sites
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Suggested Sites" "Enabled" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > News and interests > Enable news and interests on the taskbar
Set-Registry "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Settings\AllowYourAccount" "EnableFeeds" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Search > Allow Cloud Search
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCloudSearch" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Search > Allow Cortana
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortana" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Search > Allow Cortana above lock screen
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowCortanaAboveLock" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Search > Allow search and Cortana to use location
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "AllowSearchToUseLocation" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Search > Don't search the web or display web results in Search
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWeb" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Search > Don't search the web or display web results in Search over metered connections
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "ConnectedSearchUseWebOverMeteredConnections" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Search > Do not allow web search
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" "DisableWebSearch" DWORD 1

# Computer Configuration > Administrative Templates > Windows Components > Sync your settings > Do not sync
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync" "DisableSettingSync" DWORD 2

# Computer Configuration > Administrative Templates > Windows Components > Sync your settings > Do not sync
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\SettingSync" "DisableSettingSyncUserOverride" DWORD 1

# Computer Configuration > Administrative Templates > Windows Components > Windows Game Recording and Broadcasting > Enables or disables Windows Game Recording and Broadcasting
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR" "AllowgameDVR" String "0"

# Computer Configuration > Administrative Templates > Windows Components > Windows Ink Workspace > Allow suggested apps in Windows Ink Workspace
Set-Registry "HKLM:\Software\Policies\Microsoft\WindowsInkWorkspace" "AllowSuggestedAppsInWindowsInkWorkspace" DWORD 0

# Computer Configuration > Administrative Templates > Windows Components > Windows Logon Options > Sign-in and lock last interactive user automatically after a restart
Set-Registry "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "DisableAutomaticRestartSignOn" DWORD 1

# Computer Configuration > Administrative Templates > Windows Components > Windows Logon Options > Display information about previous logons during user logon
Set-Registry "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "DisplayLastLogonInfo" DWORD 0

# Computer configuration > Administrative templates > Windows components > Windows Security > Family options > Hide the Family options area
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Family options" "UILockdown" DWORD 1

# Computer configuration > Administrative templates > Windows components > Windows Security > Device performance and health > Hide the Device performance and health area
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Device performance and health" "UILockdown" DWORD 1

# Computer Configuration > Windows Settings > Security Settings > Local Polices > Security Options > Accounts: Block Microsoft accounts
Set-Registry "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" "NoConnectedUser" DWORD 3

# User Configuration > Administrative Templates > Windows Components > Cloud Content > Turn off all Windows Spotlight features
Set-Registry "HKCU:\Software\Policies\Microsoft\Windows\CloudContent" "DisableWindowsSpotlightFeatures" DWORD 1

# User Configuration > Administrative Templates > Windows Components > Edge UI > Disable help tips
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EdgeUI" "DisableHelpSticker" DWORD 1

# User Configuration > Administrative Templates > Windows Components > Edge UI > Turn off tracking of app usage
Set-Registry "HKCU:\Software\Policies\Microsoft\Windows\EdgeUI" "DisableMFUTracking" DWORD 1

# User Configuration > Administrative Templates > Windows Components > Multitasking > Configure the inclusion of Edge tabs into Alt-Tab
Set-Registry "HKCU:\Software\Policies\Microsoft\Windows\Explorer" "MultiTaskingAltTabFilter" DWORD 4

# Block from Switching to Microsoft Account - disable "Sign in with a Microsoft account instead"
Set-Registry "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\Settings\AllowYourAccount" "value" DWORD 0

################################################################################

Write-Host ""

################################################################################
