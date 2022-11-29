#!/bin/bash

volume=$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $4 }')

if [ $volume ==  'on' ] && [ $1 == mute ]  ; then
	amixer -D pulse sset Master toggle-mute
	dunstify -i /usr/share/icons/Papirus-Light/48x48/status/notification-audio-volume-muted.svg -t 800 -r 2593 -u normal ""
else
	amixer -D pulse sset Master toggle-mute
	dunstify -i /usr/share/icons/Papirus-Light/48x48/status/notification-audio-volume-high.svg -t 800 -r 2593 -u normal ""
fi
