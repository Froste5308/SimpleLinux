#!/bin/bash

echo -e "\nThis Script Installs Yay and Fish Shell, Switches Your Shell To Fish, Installs Fastfetch, Pipes, Cowsay, Htop, Git, Cava, Bat, Eza, Lolcat, Vim, Nano, And Sl, Then Edits Fish Config.\n"

figlet "This Script Is Invisible, It Is Not Frozen!"

sudo pacman -S fish fastfetch git cava bat eza lolcat vim nano sl figlet cowsay --noconfirm &>/dev/null

rm -rf /home/$USER/yay &>/dev/null
git clone https://aur.archlinux.org/yay.git &>/dev/null
cd yay &>/dev/null
makepkg -si --noconfirm &>/dev/null

yay -S pipes.sh --noconfirm &>/dev/null

chsh -s /usr/bin/fish

cat > ~/.config/fish/config.fish << 'EOF'
#if status is-interactive
# Commands to run in interactive sessions can go here
#end
set fish_greeting ""
fastfetch --logo arch3 | lolcat
EOF

clear

source ~/.config/fish/config.fish

echo -e "\nAll Done! Your Fish Config Has Been Edited To Not Show The Greeter And Show Fastfetch!\n"
