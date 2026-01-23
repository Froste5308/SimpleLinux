#!/bin/bash
echo "This Installer Prepares Your Arch System For Nearly EVERY Android Device!"
sleep 5
sudo pacman -Syu --noconfirm
sudo pacman -S usb_modeswitch android-tools android-udev mtpfs libmtp gvfs-mtp heimdall --noconfirm
clear
echo "Done!"
