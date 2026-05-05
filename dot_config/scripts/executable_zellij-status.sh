#!/bin/bash
TIME=$(date +"%H:%M")
BAT=$(upower -i $(upower -e | grep BAT) | grep -E "percentage" | awk '{print $2}')
IP=$(ip -4 route get 1 | sed -n 's/.*src \([0-9.]*\).*/\1/p')
echo "🕒 $TIME | 🔋 $BAT | 🌐 $IP"
zellij action rename-session "🌐 $IP" 2>/dev/null
