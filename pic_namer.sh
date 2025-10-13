#!/usr/bin/env bash

mv $HOME/Downloads/*.webp $HOME/Pictures/Wallpapers/

ls -v $HOME/Pictures/Wallpapers/ | cat -n | while read n f; do mv -n "$f" "$n.png"; done

