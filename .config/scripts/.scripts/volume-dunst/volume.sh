#!/bin/bash
if [ $1 == up ]; then
	amixer -q sset Master 3%+ 
	dunstify -i /usr/share/icons/Papirus-Light/48x48/status/notification-audio-volume-high.svg -t 800 -r 2593 -u normal ""
fi

if [ $1 == down ]; then
	amixer -q sset Master 3%-
	dunstify -i /usr/share/icons/Papirus-Light/48x48/status/notification-audio-volume-low.svg -t 800 -r 2593 -u normal ""
fi
