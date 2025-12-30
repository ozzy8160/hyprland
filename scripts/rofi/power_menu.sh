#!/usr/bin/env bash
options="shutdown\nreboot\nsuspend\nlogout"
choice=$(echo -e "$options" | rofi -dmenu -p "Power Menu")
case "$choice" in
  shutdown)
    systemctl poweroff
    ;;
  reboot)
    systemctl reboot
    ;;
  suspend)
    systemctl suspend
    ;;
  logout)
    hyprlock
    ;;
esac
