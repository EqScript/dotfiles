#!/bin/bash
# random-wallpaper.sh

WALLPAPER_DIR="$HOME/dotfiles/sway/wallpapers"
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f -iname '*.jpg' | sort -R | head -n 1)

[ -n "$RANDOM_WALLPAPER" ] && swaymsg output "*" bg "$RANDOM_WALLPAPER" fill
