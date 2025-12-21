#!/usr/bin/env bash
# transfer imgs in downloads to staging folder in dotfiles
mv $HOME/Downloads/*.png $HOME/.dotfiles/hypr/new_wallpapers
# put newly renamed wallpaper in final location
NUMBER_WALLPAPER=$(ls -v $HOME/.dotfiles/hypr/Wallpapers/ | wc -l)
for f in $HOME/.dotfiles/hypr/new_wallpapers/*; do
    mv "$f" "$HOME/.dotfiles/hypr/Wallpapers/$NUMBER_WALLPAPER.png"
    ((NUMBER_WALLPAPER++))
done
