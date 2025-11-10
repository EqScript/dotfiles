#!/usr/bin/env bash
# next-wallpaper.sh

WALLPAPER_DIR="$HOME/.config/wallpapers"
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' \) | sort -R | head -n 1)

# Detect compositor
if pgrep -x Hyprland >/dev/null; then
  COMPOSITOR="Hyprland"
elif pgrep -x sway >/dev/null; then
  COMPOSITOR="sway"
else
  COMPOSITOR="unknown"
fi

# Apply wallpaper
if [ -n "$RANDOM_WALLPAPER" ]; then
  case "$COMPOSITOR" in
    sway)
      swaymsg output "*" bg "$RANDOM_WALLPAPER" fill
      ;;
    Hyprland)
      hyprctl hyprpaper unload all >/dev/null
      hyprctl hyprpaper preload "$RANDOM_WALLPAPER" >/dev/null
      hyprctl hyprpaper wallpaper "eDP-1,$RANDOM_WALLPAPER" >/dev/null
      hyprctl hyprpaper wallpaper "DP-4,$RANDOM_WALLPAPER" >/dev/null
      ;;
    *)
      echo "Unsupported compositor: $COMPOSITOR"
      ;;
  esac
fi
