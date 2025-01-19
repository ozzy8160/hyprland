#!/usr/bin/env bash

#set dir and count img files
wallpaper_dir=$HOME/Wallpapers/
num_files=$(awk -F"\0" '{print NF-1}' <   <(find $wallpaper_dir -maxdepth 1 -type f -print0))

#generate random number using img file count
random_num=$((RANDOM % $num_files + 1))

#set new wallpaper
swww img $wallpaper_dir/$random_num.png &

