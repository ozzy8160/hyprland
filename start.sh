#!/usr/bin/env bash

#setting random wallpaper
random_number=$((RANDOM % 34 + 1)) 
swww img ~/Wallpapers/$random_number.png &

# you can install this by adding
# pkgs.networkmanagerapplet to your package
#nm-applet --indicator &

#the bar
pkill waybar
waybar &
