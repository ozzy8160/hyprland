#!/usr/bin/env bash

# Prompt for search query
QUERY=$(echo "" | rofi -dmenu -p "Google Search:")

# If a query is entered, open it in the default web browser
if [ -n "$QUERY" ]; then
    xdg-open "https://www.google.com/search?q=$(echo "$QUERY" | sed 's/ /+/g')"
fi
