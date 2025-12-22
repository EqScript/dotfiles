#!/bin/bash

kbd="*"

# Print all layout data for debugging
swaymsg -t get_inputs >/tmp/sway_inputs.json

# Extract current layout name
current=$(grep -m1 '"xkb_active_layout_name"' /tmp/sway_inputs.json | awk -F '"' '{print $4}')

echo "Current layout detected: $current" >>/tmp/layout_debug.log

if [ "$current" = "us" ]; then
  swaymsg input "$kbd" xkb_layout ru
  echo "Switched to ru" >>/tmp/layout_debug.log
else
  swaymsg input "$kbd" xkb_layout us
  echo "Switched to us" >>/tmp/layout_debug.log
fi
