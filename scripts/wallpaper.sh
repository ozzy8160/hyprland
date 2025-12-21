#!/usr/bin/env bash

#set dir and count img files
wallpaper_dir=$HOME/.dotfiles/hypr/Wallpapers/
#read number of img files to set limit for random num generator
num_files=$(awk -F"\0" '{print NF-1}' <   <(find $wallpaper_dir -maxdepth 1 -type f -print0))
#generate random number using img file count
random_num=$((RANDOM % $num_files + 1))
#get color shceme for new wallpaper
wal -i $wallpaper_dir$random_num.png -n -q &
#set new wallpaper
swww img $wallpaper_dir$random_num.png &
#command to create new templates with pywal
#wal -i $wallpaper_dir/$random_num.png --template ~/.cache/wal/templates/colors-hyprland.conf --output ~/.dotfiles/hypr/colors.conf
