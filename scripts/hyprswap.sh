#!/usr/bin/env bash

if [ $HOSTNAME = "LT1" ]; then
    ln -s $HOME/.dotfiles/hypr/LT1/hyprland.conf $HOME/.dotfiles/hypr/hyprland.conf
  else
    unlink $HOME/.dotfiles/hypr/hyprland.conf
    ln -s $HOME/.dotfiles/hypr/GamingPC/hyprland.conf $HOME/.dotfiles/hypr/hyprland.conf
fi
