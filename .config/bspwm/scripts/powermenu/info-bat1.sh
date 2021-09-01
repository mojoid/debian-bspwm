#!/usr/bin/env bash
source ~/.config/bspwm/.bspwm

# send battery info to notify
bat="echo -e `cat /sys/class/power_supply/BAT1/{status,capacity}`%"
$NOTIFIER -i "$ICONDIR/info.png" -t 5000 "battery" "`$bat`"
