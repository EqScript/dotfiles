# ~/.zprofile

# Start DBus session if not already running
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax)"
fi

# Set desktop environment variables
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export GTK_USE_PORTAL=1

# Launch Sway only on first TTY
if [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
fi
