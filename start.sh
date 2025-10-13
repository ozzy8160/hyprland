#!/usr/bin/env bash
hyprlock
~/.dotfiles/hypr/wallpaper.sh

#the bar start/restart waybar
pkill waybar
waybar &
