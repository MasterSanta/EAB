################################################################################

Write-Host "[ Configure Microsoft Edge ... ]" -ForegroundColor 'Magenta'

################################################################################

.$PSScriptRoot\..\Tools\Registry.ps1

################################################################################

# https://docs.microsoft.com/en-us/DeployEdge/microsoft-edge-policies

################################################################################

Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "FamilySafetySettingsEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "SyncDisabled" DWORD 1
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "BrowserAddProfileEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "BrowserGuestModeEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "BrowserSignin" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "MaxConnectionsPerProxy" DWORD 64
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "LocalBrowserDataShareEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "LocalProvidersEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "MathSolverEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "TabFreezingEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "TranslateEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "TravelAssistanceEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ResolveNavigationErrorsUseWebService" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "EdgeShoppingAssistantEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "EdgeCollectionsEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "StartupBoostEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "PaymentMethodQueryEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "UserFeedbackAllowed" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "QuickViewOfficeFilesEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ShowOfficeShortcutInFavoritesBar" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "BackgroundModeEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "SleepingTabsEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "BingAdsSuppression" DWORD 1
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ForceBingSafeSearch" DWORD 2
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "AddressBarMicrosoftSearchInBingProviderEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "TrackingPrevention" DWORD 3
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ConfigureDoNotTrack" DWORD 1
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "SearchSuggestEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "PersonalizationReportingEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "AutofillCreditCardEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ImportAutofillFormData" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ImportPaymentInfo" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ImportBrowserSettings" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ImportExtensions" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ImportFavorites" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ImportHomepage" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ImportOpenTabs" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ImportSavedPasswords" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ImportSearchEngine" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "AutoImportAtFirstRun" DWORD 4
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "PasswordManagerEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ShowMicrosoftRewards" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "AADWebSiteSSOUsingThisProfileEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "PasswordRevealEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "PasswordProtectionWarningTrigger" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "HideInternetExplorerRedirectUXForIncompatibleSitesEnabled" DWORD 1
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "InternetExplorerIntegrationReloadInIEModeAllowed" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ConfigureShare" DWORD 1
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ScreenCaptureAllowed" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "DisplayCapturePermissionsPolicyEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "WebCaptureEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "EdgeDiscoverEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "EfficiencyMode" DWORD 1
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "VisualSearchEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "MicrosoftEdgeInsiderPromotionEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "HubsSidebarEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "InAppSupportEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "EdgeEnhanceImagesEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "EdgeFollowEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "SpotlightExperiencesAndRecommendationsEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "ShowPDFDefaultRecommendationsEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "AlternateErrorPagesEnabled" DWORD 0
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "SitePerProcess" DWORD 1
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "SSLVersionMin" String "tls1.2^@"
Set-Registry "HKLM:\SOFTWARE\Policies\Microsoft\Edge" "SSLErrorOverrideAllowed" DWORD 0

################################################################################

Set-Registry "HKLM:\Software\Policies\Microsoft\Edge\ExtensionInstallAllowlist" "1" String "odfafepnkmbhccpbejgmiehpchacaeak"
Set-Registry "HKLM:\Software\Policies\Microsoft\Edge\ExtensionInstallForcelist" "1" String "odfafepnkmbhccpbejgmiehpchacaeak"
Set-Registry "HKLM:\Software\Wow6432Node\Microsoft\Edge\Extensions\odfafepnkmbhccpbejgmiehpchacaeak" "update_url" String "https://edge.microsoft.com/extensionwebstorebase/v1/crx"

################################################################################

Write-Host ""

################################################################################
