winget install JanDeDobbeleer.OhMyPosh -s winget

New-Item -Path $PROFILE -Type File -Force
notepad $PROFILE

winget install --id Microsoft.Powershell --source winget
winget install --id Microsoft.Powershell.Preview --source winget

winget install Microsoft.PowerToys --source winget

winget install yt-dlp
yt-dlp --update

# Need to install Node.js (Contains choco)
choco upgrade chocolatey
choco install mpv
choco update

# Need to install Python

pip install spotdl
## spotdl --cookie-file cookies.txt https://open.spotify.com/playlist/1PuWahEBkGv7us44Anfd76?si=b5371f1301754d63

