#!/bin/bash
#
if [[ $EUID -ne 0 ]]; then
  echo "Run this script as root." 2>&1
  exit 1
fi

username=$(id -u -n 1000)
builddir=$(pwd)

pacman -Syu

cd $builddir
pacman -S git --needed base-devel

git clone https://github.com/kaveen-lakmuthu/qtile-config.git
mv qtile-config/ qtile/

mkdir -p /home/$username/.config

cp qtile/ /home/$username/.config/
chmod -x /home/$username/.config/qtile/autostart_once.sh
chmod -X /home/$username/.config/qtile/config.py


pacman -S xorg xorg-xinit xorg-server -y
pacman -S alacritty firefox nitrogen polkit volumeicon dunst picom lxsession redshift blueman-applet xfce4-power-manager light-locker flameshot network-manager-applet ttf-font-awesome lightdm -y
pacman -S thunar neofetch htop dmenu unzip wget vim -y


echo "exec qtile start"  > ~/.xinitrc

systemctl enable lightdm

startx

