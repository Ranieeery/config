# Install PS7 and Oh My Posh

### Install OhMyPosh
```ps1
winget install JanDeDobbeleer.OhMyPosh -s winget
```
### Config
```ps1
New-Item -Path $PROFILE -Type File -Force
notepad $PROFILE
```
Inside $PROFILE:

[PowerShell config](https://github.com/Ranieeery/config/blob/main/ps/Microsoft.PowerShell_profile.ps1)

In terminal:
```ps1
. $PROFILE
```
