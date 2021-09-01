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

if  [[ $1 = "--black" ]]; then
	MF="#515151"
	AC="#bdbdbd"
	change_color
elif  [[ $1 = "--blacklight" ]]; then
	MF="#f0f0f0"
	AC="#bdbdbd"
	change_color 
elif  [[ $1 = "--red" ]]; then
	MF="#515151"
	AC="#FFC1DA"
	change_color
elif  [[ $1 = "--redlight" ]]; then
	MF="#f0f0f0"
	AC="#FFC7C6"
	change_color
elif  [[ $1 = "--green" ]]; then
	MF="#515151"
	AC="#68E09B"
	change_color
elif  [[ $1 = "--greenlight" ]]; then
	MF="#f0f0f0"
	AC="#92E0B3"
	change_color
elif  [[ $1 = "--yellow" ]]; then
    MF="#515151"
    AC="#F6F4BB"
    change_color
elif  [[ $1 = "--yellowlight" ]]; then
    MF="#f0f0f0"
    AC="#FBFDCE"
    change_color
elif [[ $1 = "--blue" ]]; then
    MF="#515151"
    AC="#AFCEED"
    change_color
elif [[ $1 = "--bluelight" ]]; then
    MF="#f0f0f0"
    AC="#CEDFFD"
    change_color
elif [[ $1 = "--magenta" ]]; then
    MF="#515151"
    AC="#D6ACF4"
    change_color
elif [[ $1 = "--magentalight" ]]; then
    MF="#f0f0f0"
    AC="#DFCDFD"
    change_color
elif [[ $1 = "--cyan" ]]; then
    MF="#515151"
    AC="#ADEAE0"
    change_color
elif [[ $1 = "--cyanlight" ]]; then
    MF="#F0F0F0"
    AC="#CBEAE5"
    change_color
else
	cat <<- _EOF_
	No option specified, Available options:
	--black --blacklight	--red   --redlight
    --gren  --greenlight   --yellow --yellowlight
    --blue  --bluelight    --magenta   --magentalight
    --cyan  --cyanlight
    
	
	_EOF_
fi
