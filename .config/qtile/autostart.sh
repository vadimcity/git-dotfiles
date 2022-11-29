#!/bin/sh
xmodmap ~/.config/.xmodmap
xset r rate 300 40 &
/usr/bin/emacs -daemon &
/usr/lib/kdeconnectd &
kdeconnect-indicator &
mate-panel &
sxhkd &
nm-applet --indicator &
blueman-applet &
picom --config=.config/picom.conf &
feh --bg-scale /home/vadim/Pictures/image_wallpaper.png &
thunar --daemon &
dunst -config=.config/dunst/dunstrc &
autorandr &
