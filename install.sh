#!/bin/bash

#shit i need
sudo pacman -Syu
sudo pacman -S firefox lxappearance dolphin qt5ct ntfs-3g gnome-disk-utility spectacle sddm
#theme
cd /usr/share/themes/
sudo git clone https://github.com/EliverLara/Nordic.git
#install dependecies
paru -S bspwm polybar sxhkd dunst rofi lsd checkupdates-aur \
playerctl mpd ncmpcpp mpc picom-arian8j2-git xtitle termite betterlockscreen \
nerd-fonts-jetbrains-mono ttf-jetbrains-mono papirus-icon-theme ttf-inconsolata feh

#install dotfiles
cd ~
git clone https://github.com/gh0stzk/dotfiles.git
cd dotfiles
mkdir ~/.config
mkdir ~/.local
chown $(whoami): ~/.local
chown $(whoami): ~/.config
chown $(whoami): ~/
mv ./.config/* ~/.config
mv ./.local/* ~/.local
mv .zshrc ~/

# Enabling Services and Graphical User Interface
systemctl enable sddm
systemctl set-default graphical.target