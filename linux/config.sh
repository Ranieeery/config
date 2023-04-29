#!/bin/bash

# Instalação de dependências
sudo apt update

# Instalar programas externos .deb
mkdir -p ~/Downloads/Programas
cd ~/Downloads/Programas
sudo dpkg -i *.deb

# Instalar o snapd
sudo apt install snapd

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

# Limpar travas do APT, se necessário
# sudo rm /var/lib/dpkg/lock-frontend
# sudo rm /var/cache/apt/archives/lock
