#!/usr/bin/env bash


if [[ $(xrandr -q | grep -w 'DP1 connected' ) ]]; then
	$HOME/.screenlayout/4kscreen.sh
else
	xrandr --output eDP1 --primary --mode 1920x1080
fi
