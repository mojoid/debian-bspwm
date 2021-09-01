#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/bspwm/panel/"

# Terminate already running bar instances
killall polybar


# Wait until the processes have been shut down
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q idesktop -c "$DIR"/idesktop.ini &
