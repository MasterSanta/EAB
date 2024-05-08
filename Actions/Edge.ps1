################################################################################

Write-Host "[ Configure Microsoft Edge ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\Registry.ps1

################################################################################

# https://docs.microsoft.com/en-us/DeployEdge/microsoft-edge-policies

################################################################################

$EdgePolicies = "HKLM:\SOFTWARE\Policies\Microsoft\Edge"

# The family page will not be shown, and Kids Mode will be hidden
Set-Registry $EdgePolicies "FamilySafetySettingsEnabled" DWORD 0

# Disables cloud synchronization only and has no impact on the RoamingProfileSupportEnabled policy
Set-Registry $EdgePolicies "SyncDisabled" DWORD 1

# Users cannot add new profiles from the Identity flyout menu or the Settings page
Set-Registry $EdgePolicies "BrowserAddProfileEnabled" DWORD 0

# Microsoft Edge doesn't let users browse in guest profiles
Set-Registry $EdgePolicies "BrowserGuestModeEnabled" DWORD 0

# User can't remove the Microsoft Edge profile (only for Microsoft Active Directory)
Set-Registry $EdgePolicies "NonRemovableProfileEnabled" DWORD 0

# User can't sign into Microsoft Edge with their account and use account-related services like sync and single sign on
Set-Registry $EdgePolicies "BrowserSignin" DWORD 0

# Specifies the maximum number of simultaneous connections to the proxy server (default: 32)
Set-Registry $EdgePolicies "MaxConnectionsPerProxy" DWORD 64

# Microsoft Edge will not share data to the Windows Indexer
Set-Registry $EdgePolicies "LocalBrowserDataShareEnabled" DWORD 0

# Suggestions from local providers are never used. Local history and local favorites suggestions will not appear
Set-Registry $EdgePolicies "LocalProvidersEnabled" DWORD 0

# The Math Solver tool will be disabled and users will not be able to use it
Set-Registry $EdgePolicies "MathSolverEnabled" DWORD 0

# Disable all built-in translate features
Set-Registry $EdgePolicies "TranslateEnabled" DWORD 0

# Microsoft Edge uses native APIs to try to resolve network connectivity and navigation issues
Set-Registry $EdgePolicies "ResolveNavigationErrorsUseWebService" DWORD 0

# Shopping features such as price comparison, coupons, rebates and express checkout will not be automatically found for retail domains
Set-Registry $EdgePolicies "EdgeShoppingAssistantEnabled" DWORD 0

# Users can't access and use Collections in Microsoft Edge
Set-Registry $EdgePolicies "EdgeCollectionsEnabled" DWORD 0

# Startup boost is turned off
Set-Registry $EdgePolicies "StartupBoostEnabled" DWORD 0

# Websites that use PaymentRequest.canMakePayment or PaymentRequest.hasEnrolledInstrument API will be informed that no payment methods are available
Set-Registry $EdgePolicies "PaymentMethodQueryEnabled" DWORD 0

# Users can't invoke Edge Feedback
Set-Registry $EdgePolicies "UserFeedbackAllowed" DWORD 0

# Office files will be downloaded to be viewed
Set-Registry $EdgePolicies "QuickViewOfficeFilesEnabled" DWORD 0

# The Office shortcut (on specific domain) isn't shown (deprecated)
Set-Registry $EdgePolicies "ShowOfficeShortcutInFavoritesBar" DWORD 0

# Background mode is turned off (Continue running background apps after Microsoft Edge closes)
Set-Registry $EdgePolicies "BackgroundModeEnabled" DWORD 0

# No tabs will be frozen
Set-Registry $EdgePolicies "SleepingTabsEnabled" DWORD 0

# User can search on bing.com and have an ad-free search experience. At the same time, the SafeSearch setting will be set to 'Strict' and can't be changed by the user
Set-Registry $EdgePolicies "BingAdsSuppression" DWORD 1

# Configure strict search restrictions in Bing
Set-Registry $EdgePolicies "ForceBingSafeSearch" DWORD 2

# Users can't see internal results in the Microsoft Edge address bar suggestion list
Set-Registry $EdgePolicies "AddressBarMicrosoftSearchInBingProviderEnabled" DWORD 0

# Strict (blocks harmful trackers and majority of trackers from all sites; content and ads will have minimal personalization. Some parts of sites might not work)
Set-Registry $EdgePolicies "TrackingPrevention" DWORD 3

# Do Not Track requests are always sent to websites asking for tracking info
Set-Registry $EdgePolicies "ConfigureDoNotTrack" DWORD 1

# Web search suggestions are never used, however local history and local favorites suggestions still appear
Set-Registry $EdgePolicies "SearchSuggestEnabled" DWORD 0

# This policy prevents Microsoft from collecting a user's Microsoft Edge browsing history, favorites and collections, usage, and other browsing data to be used for personalizing advertising, search, news, Microsoft Edge and other Microsoft services (users can't change or override the setting)
Set-Registry $EdgePolicies "PersonalizationReportingEnabled" DWORD 0

# AutoFill never suggests, fills, or recommends new payment Instruments
Set-Registry $EdgePolicies "AutofillCreditCardEnabled" DWORD 0

# Disables automatic import, and the import section of the first-run experience is skipped
Set-Registry $EdgePolicies "AutoImportAtFirstRun" DWORD 4

# Users can't save and add new passwords, but they can still use previously saved passwords
Set-Registry $EdgePolicies "PasswordManagerEnabled" DWORD 0

# Users will not see the Microsoft Rewards (settings will be disabled and toggled off)
Set-Registry $EdgePolicies "ShowMicrosoftRewards" DWORD 0

# Single sign-on for work or school sites using this profile disabled
Set-Registry $EdgePolicies "AADWebSiteSSOUsingThisProfileEnabled" DWORD 0

# The browser user setting won't display the password reveal button (it doesn't affect websites' custom reveal buttons)
Set-Registry $EdgePolicies "PasswordRevealEnabled" DWORD 0

# One-time redirection dialog and banner will never be shown to users
Set-Registry $EdgePolicies "HideInternetExplorerRedirectUXForIncompatibleSitesEnabled" DWORD 1

# Users aren't allowed to reload unconfigured sites in Internet Explorer mode
Set-Registry $EdgePolicies "InternetExplorerIntegrationReloadInIEModeAllowed" DWORD 0

# Don't allow using the Share experience
Set-Registry $EdgePolicies "ConfigureShare" DWORD 1

# Calls to screen-share APIs will fail. Web-based online meeting, video or screen sharing will not work
Set-Registry $EdgePolicies "ScreenCaptureAllowed" DWORD 0

# Users can't access the web capture feature in Microsoft Edge
Set-Registry $EdgePolicies "WebCaptureEnabled" DWORD 0

# When the device is unplugged, efficiency mode takes moderate steps to save battery. When the device is unplugged and the battery is low, efficiency mode takes additional steps to save battery
Set-Registry $EdgePolicies "EfficiencyMode" DWORD 4

# Visual search will be disabled and you won't be able to get more info about images via hover, context menu, and search in sidebar
Set-Registry $EdgePolicies "VisualSearchEnabled" DWORD 0

# The Microsoft Edge Insider promotion content will not be shown on the About Microsoft Edge page
Set-Registry $EdgePolicies "MicrosoftEdgeInsiderPromotionEnabled" DWORD 0

# Never show the Sidebar
Set-Registry $EdgePolicies "HubsSidebarEnabled" DWORD 0

# Users can't invoke in-app support
Set-Registry $EdgePolicies "InAppSupportEnabled" DWORD 0

# Microsoft Edge will not enhance images
Set-Registry $EdgePolicies "EdgeEnhanceImagesEnabled" DWORD 0

# Microsoft Edge will not communicate with Follow service to provide the follow feature
Set-Registry $EdgePolicies "EdgeFollowEnabled" DWORD 0

# Allow feature recommendations and browser assistance notifications from Microsoft Edge
Set-Registry $EdgePolicies "ShowRecommendationsEnabled" DWORD 0

# Spotlight experiences and recommendations are turned off
Set-Registry $EdgePolicies "SpotlightExperiencesAndRecommendationsEnabled" DWORD 0

# Employees will not receive any notifications from Microsoft Edge to set itself as the default PDF handler
Set-Registry $EdgePolicies "ShowPDFDefaultRecommendationsEnabled" DWORD 0

# No calls to the web service are made and a standard error page is shown
Set-Registry $EdgePolicies "AlternateErrorPagesEnabled" DWORD 0

# Users can't opt out of the default behavior where each site runs in its own process
Set-Registry $EdgePolicies "SitePerProcess" DWORD 1

# Users are blocked from clicking through any warning page
Set-Registry $EdgePolicies "SSLErrorOverrideAllowed" DWORD 0

# Block ads on sites with intrusive ads. (Default value) 
Set-Registry $EdgePolicies "AdsSettingForIntrusiveAdsSites" DWORD 2

# Tracking Prevention will not adjust its behavior even when transparency metadata is provided by ads
Set-Registry $EdgePolicies "AdsTransparencyEnabled" DWORD 0

# Users won't be able to access the games menu
Set-Registry $EdgePolicies "AllowGamesMenu" DWORD 0

# Users won't be able to play the surf game when the device is offline
Set-Registry $EdgePolicies "AllowSurfGame" DWORD 0

# Audio process will run with normal priority
Set-Registry $EdgePolicies "AudioProcessHighPriorityEnabled" DWORD 0

# Audio process will run sandboxed
Set-Registry $EdgePolicies "AudioSandboxEnabled" DWORD 1

# All navigations delivered over HTTP are switched to HTTPS. Connection errors might occur more often
Set-Registry $EdgePolicies "AutomaticHttpsDefault" DWORD 2

# Web page elements that are not from the domain that is in the address bar can't set cookies
Set-Registry $EdgePolicies "BlockThirdPartyCookies" DWORD 1

# Enable code integrity guard enforcement in the browser process
Set-Registry $EdgePolicies "BrowserCodeIntegritySetting" DWORD 2

# Don't allow any site to request read access to files and directories via the File System API
Set-Registry $EdgePolicies "DefaultFileSystemReadGuardSetting" DWORD 2

# Don't allow any site to request write access to files and directories
Set-Registry $EdgePolicies "DefaultFileSystemWriteGuardSetting" DWORD 2

# Don't allow any site to track users' physical location
Set-Registry $EdgePolicies "DefaultGeolocationSetting" DWORD 2

# Do not allow any site to run JavaScript JIT (slow)
Set-Registry $EdgePolicies "DefaultJavaScriptJitSetting" DWORD 2

# Do not allow any site to request access to serial ports via the Serial API
Set-Registry $EdgePolicies "DefaultSerialGuardSetting" DWORD 2

# Do not allow any site to request access to Bluetooth devices via the Web Bluetooth API
Set-Registry $EdgePolicies "DefaultWebBluetoothGuardSetting" DWORD 2

# Do not allow any site to request access to HID devices via the WebHID API
Set-Registry $EdgePolicies "DefaultWebHidGuardSetting" DWORD 2

# Do not allow any site to request access to USB devices via the WebUSB API
Set-Registry $EdgePolicies "DefaultWebUsbGuardSetting" DWORD 2

# Turns off required and optional diagnostic data collection
Set-Registry $EdgePolicies "DiagnosticData" DWORD 0

# Enhance the security state - StrictMode
Set-Registry $EdgePolicies "EnhanceSecurityMode" DWORD 2

# Microsoft Edge denies use of the headless mode
Set-Registry $EdgePolicies "HeadlessModeEnabled" DWORD 0

# First-run experience and the splash screen will not be shown to users when they run Microsoft Edge for the first time
Set-Registry $EdgePolicies "HideFirstRunExperience" DWORD 1

# Pin to taskbar wizard is disabled in the menu and cannot be called via a protocol launch
Set-Registry $EdgePolicies "PinningWizardAllowed" DWORD 0

# Microsoft Edge can't show full-tab content to users
Set-Registry $EdgePolicies "PromotionalTabsEnabled" DWORD 0

# Microsoft Edge mini menu will not be shown when text on websites and PDFs is selected
Set-Registry $EdgePolicies "QuickSearchShowMiniMenu" DWORD 0

# Users can receive related matches in Find on Page on limited sites. The results are processed on the user's device
Set-Registry $EdgePolicies "RelatedMatchesCloudServiceEnabled" DWORD 0

# Always show the Home button
Set-Registry $EdgePolicies "ShowHomeButton" DWORD 1

# Edge TyposquattingChecker is turned on
Set-Registry $EdgePolicies "TyposquattingCheckerEnabled" DWORD 1

# The Edge bar will be disabled for all profiles
Set-Registry $EdgePolicies "WebWidgetAllowed" DWORD 0

# The Edge bar will not start at Windows startup for all profiles
Set-Registry $EdgePolicies "WebWidgetIsEnabledOnStartup" DWORD 0

# Disable importing
Set-Registry $EdgePolicies "ImportOnEachLaunch" DWORD 0
Set-Registry $EdgePolicies "ImportStartupPageSettings" DWORD 0
Set-Registry $EdgePolicies "ImportAutofillFormData" DWORD 0
Set-Registry $EdgePolicies "ImportPaymentInfo" DWORD 0
Set-Registry $EdgePolicies "ImportBrowserSettings" DWORD 0
Set-Registry $EdgePolicies "ImportExtensions" DWORD 0
Set-Registry $EdgePolicies "ImportHomepage" DWORD 0
Set-Registry $EdgePolicies "ImportOpenTabs" DWORD 0
Set-Registry $EdgePolicies "ImportSavedPasswords" DWORD 0
Set-Registry $EdgePolicies "ImportSearchEngine" DWORD 0
Set-Registry $EdgePolicies "ImportCookies" DWORD 0
Set-Registry $EdgePolicies "ImportHistory" DWORD 0
Set-Registry $EdgePolicies "ImportShortcuts" DWORD 0
#Set-Registry $EdgePolicies "ImportFavorites" DWORD 0

################################################################################

# Install uBlock Origin
Set-Registry "$EdgePolicies\ExtensionInstallAllowlist" "1" String "odfafepnkmbhccpbejgmiehpchacaeak"
Set-Registry "$EdgePolicies\ExtensionInstallForcelist" "1" String "odfafepnkmbhccpbejgmiehpchacaeak"
Set-Registry "HKLM:\Software\Wow6432Node\Microsoft\Edge\Extensions\odfafepnkmbhccpbejgmiehpchacaeak" "update_url" String "https://edge.microsoft.com/extensionwebstorebase/v1/crx"

################################################################################

Write-Host ""

################################################################################
