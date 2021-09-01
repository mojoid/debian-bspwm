#!/usr/bin/env bash

# Color files
PFILE="$HOME/.config/bspwm/panel/colors.ini"
RFILE="$HOME/.config/bspwm/rofi/colors.rasi"

# Change colors
change_color() {
	# polybar
	sed -i -e 's/foreground-alt = #.*/foreground-alt = #8F8F8F/g' $PFILE
	sed -i -e "s/module-fg = #.*/module-fg = $MF/g" $PFILE
	sed -i -e "s/primary = #.*/primary = $AC/g" $PFILE
	sed -i -e 's/secondary = #.*/secondary = #E53935/g' $PFILE
	sed -i -e 's/alternate = #.*/alternate = #7cb342/g' $PFILE
	
	# rofi
	sed -i -e "s/foreground-list:.*/foreground-list: #00000000;" $RFILE
	sed -i -e "s/background-light:.*/background-light: ${AC}33;/g" $RFILE
	sed -i -e "s/background-focus:.*/background-focus: ${MF}FF;/g" $RFILE
	sed -i -e "s/accent:.*/accent: ${AC}FF;/g" $RFILE
	#polybar-msg cmd restart
	~/.config/bspwm/panel/launch.sh
}

if  [[ $1 = "--black-dark" ]]; then
	MF="#282C34"
	AC="#bdbdbd"
	change_color
elif  [[ $1 = "--black-light-dark" ]]; then
	MF="#f0f0f0"
	AC="#bdbdbd"
	change_color 
elif  [[ $1 = "--red-dark" ]]; then
	MF="#282C34"
	AC="#FFC1DA"
	change_color
elif  [[ $1 = "--red-light-dark" ]]; then
	MF="#f0f0f0"
	AC="#FFC7C6"
	change_color
elif  [[ $1 = "--green-dark" ]]; then
	MF="#282C34"
	AC="#68E09B"
	change_color
elif  [[ $1 = "--green-light-dark" ]]; then
	MF="#f0f0f0"
	AC="#92E0B3"
	change_color
elif  [[ $1 = "--yellow-dark" ]]; then
    MF="#282C34"
    AC="#F6F4BB"
    change_color
elif  [[ $1 = "--yellow-light-dark" ]]; then
    MF="#f0f0f0"
    AC="#FBFDCE"
    change_color
elif [[ $1 = "--blue-dark" ]]; then
    MF="#282C34"
    AC="#AFCEED"
    change_color
elif [[ $1 = "--blue-light-dark" ]]; then
    MF="#f0f0f0"
    AC="#CEDFFD"
    change_color
elif [[ $1 = "--magenta-dark" ]]; then
    MF="#282C34"
    AC="#DFCDFD"
    change_color
elif [[ $1 = "--magenta-light-dark" ]]; then
    MF="#f0f0f0"
    AC="#DFCDFD"
    change_color
elif [[ $1 = "--cyan-dark" ]]; then
    MF="#282C34"
    AC="#ADEAE0"
    change_color
elif [[ $1 = "--cyan-light-dark" ]]; then
    MF="#F0F0F0"
    AC="#CBEAE5"
    change_color
else
	cat <<- _EOF_
	No option specified, Available options:
	--black-dark    --black-light-dark  --red-dark  --red-light-dark
    --gren-dark --green-light-dark  --yellow-dark   --yellow-light-dark
    --blue-dark --blue-light-dark   --magenta-dark  --magenta-light-dark
    --cyan-dark --cyan-light-dark
	_EOF_
fi
