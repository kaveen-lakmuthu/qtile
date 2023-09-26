#!/bin/sh
#
#picom --experimental-backends -b &
picom &
lxsession &
#/usr/bin/lxpolkit &
# redshift-gtk -l 6:79 &
redshift-gtk -l 6:79 &
volumeicon &
nm-applet &
nitrogen --restore &
blueman-applet &
udiskie -2 -s &
xfce4-power-manager &
dunst &
/usr/bin/emacs --daemon &
flameshot &
light-locker &
#xinput set-prop Touchpad 313 1
#xinput set-prop Touchpad 284 1
# polkit &
