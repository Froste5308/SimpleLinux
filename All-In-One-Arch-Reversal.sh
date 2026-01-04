#!/bin/bash
figlet "Removing!"
sudo pacman -Rns --noconfirm --quiet pipes.sh google-chrome brave-bin zen-browser-bin firefox balena-etcher ventoy-bin git curl wget fish android-tools android-udev heimdall gvfs gvfs-mtp cava figlet lolcat sl usbutils ptyxis cowsay fastfetch vim nano bat eza yay
rm -rf /home/$USER/.config/fish
sudo rm -rf /home/$USER/.config/*
clear
echo -e "\nAll Done! Now The Packages From All-In-One-Arch.sh Are Gone!\n"
