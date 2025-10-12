#!/usr/bin/env bash

external_outputs=$(swaymsg -t get_outputs | jq -r '.[] | select(.name != "eDP-1") | .name')

x_offset=2880
while IFS= read -r output; do
  swaymsg "output $output enable"
  swaymsg "output $output position ${x_offset} 0"
  x_offset=$((x_offset + 1920))
done <<< "$external_outputs"
