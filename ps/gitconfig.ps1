git config --global user.name "Ranieeery"
git config --global user.email "raniery2003@hotmail.com"
git config --global init.defaultBranch main

ssh-keygen -t ed25519 -C "raniery2003@hotmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

Get-Content ~/.ssh/id_ed25519.pub | Set-Clipboard
