#!/usr/bin/env bash

# Load Global Variable
source $HOME/.config/bspwm/.bspwm

rofi_command="rofi -theme ~/.config/bspwm/rofi/powermenu.rasi"

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"
chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"

case $chosen in
    $shutdown)
<<<<<<< HEAD
<<<<<<< HEAD
        ~/.config/bspwm/scripts/powermenu/promptmenu.sh  --yes-command "$POWEROFF" --query "      Poweroff ?"
        ;;
    $reboot)
        ~/.config/bspwm/scripts/powermenu/promptmenu.sh  --yes-command "$REBOOT" --query "       Reboot ?"
=======
=======
>>>>>>> 566557ccb9e65c851d1dfe6ba8873c2034d55db1
        ~/.config/bspwm/scripts/powermenu/promptmenu.sh  --yes-command "$POWEROFF" --query "      Poweroff?"
        ;;
    $reboot)
        ~/.config/bspwm/scripts/powermenu/promptmenu.sh  --yes-command "$REBOOT" --query "       Reboot?"
<<<<<<< HEAD
>>>>>>> 566557ccb9e65c851d1dfe6ba8873c2034d55db1
=======
>>>>>>> 566557ccb9e65c851d1dfe6ba8873c2034d55db1
        ;;
    $lock)
        bash -c $LOCK
        ;;
    $suspend)
        mpc -q pause
        bash -c "$SLEEP"
        bash -c "$LOCK"
        ~/.scripts/display/brightness-startup
        ;;
    $logout)
        ~/.config/bspwm/scripts/powermenu/promptmenu.sh --yes-command "pkill -KILL -u $(whoami)" --query "       Logout?"
        ;;
esac
