# configure time zone
Get-TimeZone -ListAvailable | ?{$_.DisplayName -like "*GMT Standard Time*"} | Set-TimeZone

# configure regional/locale/keyboard settings
# English - United Kingdom
$region = "en-GB"

Set-Culture $region
Set-WinSystemLocale $region
Set-WinUserLanguageList $region, "en-GB" -force -wa silentlycontinue
Set-WinHomeLocation 242

# copy regional settings to new user accounts and welcome screen
Copy-UserInternationalSettingsToSystem -WelcomeScreen $True -NewUser $True
