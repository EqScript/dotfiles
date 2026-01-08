#!/bin/bash

# This is a "fire and forget" background launcher
(
    # Give the external monitor a generous window to wake up
    # In Wayland/Fedora 43, this is the safest bet
    sleep 5

    # Grab the freshest signature
    LATEST_SIG=$(ls -t $XDG_RUNTIME_DIR/hypr | grep -v "current" | head -n 1)
    export HYPRLAND_INSTANCE_SIGNATURE="$LATEST_SIG"

    # Try to start ashell. If it fails (Broken pipe), wait and retry ONCE.
    if ! ashell; then
        echo "First attempt failed (monitor race). Retrying..."
        sleep 5
        ashell
    fi
) & > /dev/null 2>&1
