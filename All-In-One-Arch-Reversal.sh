#!/bin/bash
figlet "Removing!"
echo -e "\nTHERE IS NO CONFIRMATION, PLEASE MAKE SURE YOU ARE RUNNING THIS ON A FRESH ARCH INSTALL AFTER RUNNING All-In-One-Arch.sh BECAUSE THIS IS MEANT TO REMOVE EVERYTHING FROM IT AND REMOVES ALL THE DEPENDENCIES!!!\n"
sleep 15
chsh -s /usr/bin/bash
sudo pacman -Rns --noconfirm --quiet pipes.sh google-chrome brave-bin zen-browser-bin firefox balena-etcher ventoy-bin git curl wget fish android-tools android-udev heimdall gvfs gvfs-mtp cava figlet lolcat sl usbutils ptyxis cowsay fastfetch vim nano bat eza yay
rm -rf /home/$USER/.config/fish
sudo rm -rf /home/$USER/.config/*
clear
echo -e "\nAll Done! Now The Packages From All-In-One-Arch.sh Are Gone!\n"
