#!/usr/bin/env bash

if [ if $HOSTNAME = "LT1" ]; then
    ln -s $HOME/.dotfiles/hypr/LT1/hyprland.conf $HOME/.dotfiles/hypr/hyprland.conf
  else
    ln -s $HOME/.dotfiles/hypr/GamingPC/hyprland.conf $HOME/.dotfiles/hypr/hyprland.conf
fi
