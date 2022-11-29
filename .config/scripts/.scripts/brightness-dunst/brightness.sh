#!/bin/bash

if [ $1 == up ]; then
	xbacklight -inc 5
	dunstify -i /usr/share/icons/Papirus-Light/48x48/status/notification-display-brightness-full.svg -t 800 -r 2593 -u normal ""
fi

if [ $1 == down ]; then
	xbacklight -dec 5
	dunstify -i /usr/share/icons/Papirus-Light/48x48/status/notification-display-brightness-low.svg -t 800 -r 2593 -u normal ""
fi
