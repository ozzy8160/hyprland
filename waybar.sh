#!/usr/bin/env bash
~/.dotfiles/hypr/wallpaper.sh

#^^^^start/restart waybar^^^^
pkill waybar
waybar > /dev/null 2>&1 &
