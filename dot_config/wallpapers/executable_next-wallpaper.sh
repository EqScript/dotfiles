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
      pgrep hyprpaper >/dev/null || hyprpaper &
      sleep 0.5
      hyprctl hyprpaper unload all
      hyprctl hyprpaper preload "$RANDOM_WALLPAPER"
      for output in $(hyprctl monitors | awk '/Monitor/ {print $2}'); do
        hyprctl hyprpaper wallpaper "$output,$RANDOM_WALLPAPER"
      done
      ;;
    *)
      echo "Unsupported compositor: $COMPOSITOR"
      ;;
  esac
fi
