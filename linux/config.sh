#!/bin/bash

# Instalação de dependências
sudo apt update

# Configuração do Git
git config --global user.name "Ranieeery"
git config --global user.email "raniery2003@hotmail.com"
git config --global init.defaultBranch main

# Instalação do Grub
sudo apt-get install grub2
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer
sudo update-grub

# Instalar programas externos .deb
mkdir -p ~/Downloads/Programas
cd ~/Downloads/Programas
sudo dpkg -i *.deb

# Instalar o snapd
sudo apt install -y snapd

# Instalar Spotify, Flatpak e Discord via Flatpak
sudo snap install spotify
sudo apt install flatpak
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.discordapp.Discord

# Instalar Brave Browser via Flatpak
flatpak install flathub com.brave.Browser
flatpak run com.brave.Browser

# Instalar Visual Studio Code e IntelliJ IDEA Ultimate via Flatpak
flatpak install flathub com.visualstudio.code
flatpak run com.visualstudio.code
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate
flatpak run com.jetbrains.IntelliJ-IDEA-Ultimate

# Instalar Steam via Flatpak
flatpak install flathub com.valvesoftware.Steam
flatpak run com.valvesoftware.Steam

# Instalar OpenJDK 17, Node.js e Yarn
sudo apt install -y openjdk-17-jdk nodejs npm
npm install --global yarn

# Instalar Zsh e Oh My Zsh
sudo apt install zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo 'Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc, and source ~/.zshrc'

# Continuação Grub
echo "sudo nano /etc/default/grub and set GRUB_DISABLE_OS_PROBER=false"
echo "sudo apt-get install os-prober"

# Limpar travas do APT, se necessário
# sudo rm /var/lib/dpkg/lock-frontend
# sudo rm /var/cache/apt/archives/lock
