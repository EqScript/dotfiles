#!/bin/bash
TIME=$(date +"%H:%M")
BAT=$(upower -i $(upower -e | grep BAT) | grep -E "percentage" | awk '{print $2}')
echo "🕒 $TIME | 🔋 $BAT"

