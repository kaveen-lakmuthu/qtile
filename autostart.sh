#!/bin/sh
nitrogen --restore
picom -f &
udiskie -2 &
lxsession &
volumeicon &
nm-applet &
clipman -&
/usr/bin/emacs --daemon &
/usr/bin/dunst &
