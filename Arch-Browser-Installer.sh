#!/bin/bash

echo -e "\nThis Script Will Install The Tools Needed To Install Yay AUR Helper For Arch, And It Will Install Four Browsers, Brave, Chrome, Firefox, And Zen Browser.\n"

sleep 10

sudo pacman -S git curl wget --noconfirm

sleep 2

rm -rf /home/$USER/yay

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si --noconfirm

cd /home/$USER

sleep 3

echo -e "\nNow Yay Will Install The Four Browsers. The Ones You Don't Use Can Be Removed With 'sudo pacman -Rnc APPNAME'.\n"

sleep 7

yay -S zen-browser-bin --noconfirm
yay -S google-chrome --noconfirm
yay -S firefox --noconfirm
yay -S brave-browser --noconfirm

clear

echo -e "\nBrowsers Are Installed, Now, Any Browsers You Do Not Want Can Be Removed With 'sudo pacman -Rnc APPNAME', The Apps Are google-chrome, zen-browser-bin, firefox, and brave-browser\n" 
