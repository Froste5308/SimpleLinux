#!/bin/bash

set -e

echo "This Script Is For Arch Linux And Distros Based On It, Such As CachyOS And Manjaro, This Script Will Not Work On Distros Like Ubuntu, Debian, And Fedora."

sleep 3

echo -e "\nInstalling Dependencies\n"

sleep 0.5

sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git curl wget fish cava android-tools android-udev gvfs gvfs-mtp usbutils --noconfirm

sleep 2

echo -e "\nInstalling Yay (Please Make Sure You Do Not Have A Yay Folder In /home/$USER), I Will Delete It, Kill The Script Now If /home/$USER/yay Already Exists.\n"

sleep 10

rm -rf ~/yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

sleep 1
clear
echo "Yay Is Installed, Now You Can Install Packages Outside Pacman By Using 'yay -S PACKAGENAME'"
