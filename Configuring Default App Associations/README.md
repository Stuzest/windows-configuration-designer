# Windows Configuration Designer: Configuring Default App Associations

<b>Objectives:</b>

* Install applications:
    * Google Chrome
    * Adobe Reader
* Execute associations.ps1
    * Google Chrome as default browser
    * Adobe Reader as default PDF reader
* Execute setup.p1
    * Create local admin user
    * Skip "Privacy experiance"
* Skip OOBE

<b>Rules to folow:</b>

* Software needs to be installed before users <b>first</b> login
* Default Applications need to be set before users <b>first</b> login

<b>Download URL's:</b>

* [Google Chrome](https://chromeenterprise.google/browser/download/#windows-tab)
* [Adobe Reader](https://get.adobe.com/reader/enterprise/)

<b>Install Google Chrome:</b>

```powershell
msiexec.exe /i googlechromestandaloneenterprise64.msi /qn /norestart
```

<b>Install Adobe Reader:</b>

```powershell
cmd /c AcroRdrDC2400120643_en_US.exe /sAll /rs /msi EULA_ACCEPT=YES
```

<b>Export-DefaultAppAssociations:</b>

```powershell
dism /online /Export-DefaultAppAssociations:"C:\associations.xml"
```

<b>Execute setup.ps1:</b>

```powershell
powershell.exe -ExecutionPolicy Bypass -File setup.ps1
```

<b>Execute associations.ps1:</b>

```powershell
powershell.exe -ExecutionPolicy Bypass -File associations.ps1
```

## Related videos

<b>PowerShell:</b>

[Windows 11 set default applications for new users]()

<b>Windows Configuration Designer:</b>

[Windows Configuration Designer playlist](https://www.youtube.com/playlist?list=PLVncjTDMNQ4SAh9zjdreUBYSzSf7L5IX2)