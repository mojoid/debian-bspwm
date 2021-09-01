#!/usr/bin/env bash

rofi_command="rofi -theme ~/.config/bspwm/rofi/shot.rasi"

# Options
screen=""
area=""
timer=""

# Variable passed to rofi
options="$screen\n$area\n$timer"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in
    $screen)
        ~/.config/bspwm/scripts/shot/shot-now delay
        ;;
    $area)
        ~/.config/bspwm/scripts/shot/shot-seldraw
        ;;
    $timer)
        ~/.config/bspwm/scripts/shot/shot-timer
        ;;
esac
