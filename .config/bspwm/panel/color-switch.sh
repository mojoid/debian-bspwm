#!/usr/bin/env bash

SDIR="$HOME/.config/bspwm/panel"
light="$SDIR"/colors-light.sh
dark="$SDIR"/colors-dark.sh

rofi_command="rofi -theme $HOME/.config/bspwm/rofi/idesktop.rasi"
options="♥ black\n♥ blacklight\n♥ red\n♥ redlight\n♥ green\n♥ greenlight
♥ yellow\n♥ yellowlight\n♥ blue\n♥ bluelight\n♥ magenta\n♥ magentalight
♥ cyan\n♥ cyanlight\n♥ black-dark\n♥ black-light-dark\n♥ red-dark
♥ red-light-dark\n♥ green-dark\n♥ green-light-dark\n♥ yellow-dark
♥ yellow-light-dark\n♥ blue-dark\n♥ blue-light-dark\n♥ magenta-dark
♥ magenta-light-dark\n♥ cyan-dark\n♥ cyan-light-dark"
# Launch Rofi
MENU="$(echo -e "$options" | $rofi_command -dmenu -i -p)"
            case "$MENU" in
				## Light Colors
                *black) "$light" --black ;;
				*blacklight) "$light" --blacklight ;;
				*red) "$light" --red ;;
                *redlight) "$light" --redlight ;;
                *green) "$light" --green ;;
				*greenlight) "$light" --greenlight ;;
                *yellow) "$light" --yellow ;;
                *yellowlight) "$light" --yellowlight ;;
				*blue) "$light" --blue ;;
                *bluelight) "$light" --bluelight ;;
                *magenta) "$light" --magenta ;;
                *magentalight) "$light" --magentalight ;;
                *cyan) "$light" --cyan ;;
                *cyanlight) "$light" --cyanlight ;;
                ## Dark Colors
                *black-dark) "$dark" --black-dark ;;
				*black-light-dark) "$dark" --black-light-dark ;;
				*red-dark) "$dark" --red-dark ;;
                *red-light-dark) "$dark" --red-light-dark ;;
                *green-dark) "$dark" --green-dark ;;
				*green-light-dark) "$dark" --green-light-dark ;;
                *yellow-dark) "$dark" --yellow-dark ;;
                *yellow-light-dark) "$dark" --yellow-light-dark ;;
				*blue-dark) "$dark" --blue-dark ;;
                *blue-light-dark) "$dark" --blue-light-dark ;;
                *magenta-dark) "$dark" --magenta-dark ;;
                *magenta-light-dark) "$dark" --magenta-light-dark ;;
                *cyan-dark) "$dark" --cyan-dark ;;
                *cyan-light-dark) "$dark" --cyan-light-dark ;;     
            esac
