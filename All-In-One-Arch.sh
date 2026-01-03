#!/bin/bash

echo -e "\nAll In One Installer For Arch Linux, It Installs Git, Curl, ACPI, Efibootmgr Wget, Fish Shell, ADB Fastboot, Android-Udev, Heimdall, Gvfs, Gvfs-MTP, Cava, Figlet, Lolcat, Sl, Usbutils, Ptyxis, Cowsay, Fastfetch, Vim, Nano, Bat, Eza, Pipes.sh, Chrome, Brave Browser, Zen Browser, Firefox, Balena Etcher, And Ventoy.\n"

sleep 1

echo -e "\nThis Script Runs Invisible, Not Seeing An Output Does Not Mean It Is Frozen, Okay?\n"

sudo pacman -Syu --noconfirm &>/dev/null

sudo pacman -S git curl wget fish acpi efibootmgr android-tools android-udev heimdall gvfs gvfs-mtp cava figlet lolcat sl usbutils ptyxis cowsay fastfetch vim nano bat eza --noconfirm &>/dev/null

rm -rf /home/$USER/yay &>/dev/null
git clone https://aur.archlinux.org/yay.git &>/dev/null
cd yay &>/dev/null
makepkg -si --noconfirm &>/dev/null

cd &>/dev/null

yay -S pipes.sh google-chrome brave-browser zen-browser-bin firefox balena-etcher ventoy-bin --noconfirm &>/dev/null

chsh -s /usr/bin/fish

cat > ~/.config/fish/config.fish << 'E0F'
set fish_greeting ""
fastfetch --logo arch3 | lolcat
E0F

clear

echo -e "\nThe Following Packages Have Been Installed:
Pipes
Chrome
Brave Browser
Zen Browser
Firefox
Balena Etcher
Ventoy GUI/CLI
Git
Curl
Wget
Fish Shell
Android-Tools (ADB Fastboot)
Android-Udev
Heimdall
GVFS
GVFS-MTP
Cava
Figlet
Lolcat
Sl
Usbutils
Ptyxis
Cowsay
Fastfetch
Vim
Nano
Bat
Eza
\n"

source ~/.config/fish/config.fish

figlet "Finished!"
