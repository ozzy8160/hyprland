#!/usr/bin/env bash
#transfer imgs in downloads to staging folder in dotfiles
mv $HOME/Downloads/*.webp $HOME/.dotfiles/hypr/new_wallpapers
mv $HOME/Downloads/*.png $HOME/.dotfiles/hypr/new_wallpapers
mv $HOME/Downloads/*.jpg $HOME/.dotfiles/hypr/new_wallpapers
#save new downloaaded wallpaper to ~/.dotfiles/hypr/Wallpapers/new/ for renaming
ls -v ~/.dotfiles/hypr/new_wallpapers/ | cat -n | while read n f; do mv -n ~/.dotfiles/hypr/new_wallpapers/"$f" ~/.dotfiles/hypr/renamed_wallpapers/"$n.png"; done
