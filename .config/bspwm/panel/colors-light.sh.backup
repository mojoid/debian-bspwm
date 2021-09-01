#!/usr/bin/env bash

# Color files
PFILE="$HOME/.config/bspwm/panel/colors.ini"
RFILE="$HOME/.config/bspwm/rofi/colors.rasi"

# Change colors
change_color() {
	# polybar
	#sed -i -e 's/background = #.*/background = #fdfdfd/g' $PFILE
	#sed -i -e 's/foreground = #.*/foreground = #5f5f5f/g' $PFILE
	sed -i -e 's/foreground-alt = #.*/foreground-alt = #8F8F8F/g' $PFILE
	sed -i -e "s/module-fg = #.*/module-fg = $MF/g" $PFILE
	sed -i -e "s/primary = #.*/primary = $AC/g" $PFILE
	sed -i -e 's/secondary = #.*/secondary = #E53935/g' $PFILE
	sed -i -e 's/alternate = #.*/alternate = #7cb342/g' $PFILE
	
	# rofi
	#sed -i -e "s/background:.*/background: #FDFDFDFF;/g" $RFILE
	#sed -i -e "s/foreground:.*/foreground: #2E2E2EFF;/g" $RFILE
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
	MF="#f0f0f0"
	AC="#ef3080"
	change_color
elif  [[ $1 = "--redlight" ]]; then
	MF="#D5F0EB"
	AC="#FFC8C3"
	change_color
elif  [[ $1 = "--green" ]]; then
	MF="#515151"
	AC="#2AE077"
	change_color
elif  [[ $1 = "--greenlight" ]]; then
	MF="#f0f0f0"
	AC="#68e09b"
	change_color
elif  [[ $1 = "--yellow" ]]; then
    MF="#515151"
    AC="#f0a412"
    change_color
elif  [[ $1 = "--yellowlight" ]]; then
    MF="#f0f0f0"
    AC="#ffb630"
    change_color
elif [[ $1 = "--blue" ]]; then
    MF="#515151"
    AC="#5294e2"
    change_color
elif [[ $1 = "--bluelight" ]]; then
    MF="#f0f0f0"
    AC="#9bbbff"
    change_color
elif [[ $1 = "--magenta" ]]; then
    MF="#515151"
    AC="#7e57c2"
    change_color
elif [[ $1 = "--magentalight" ]]; then
    MF="#f0f0f0"
    AC="#977fc2"
    change_color
elif [[ $1 = "--cyan" ]]; then
    MF="#515151"
    AC="#1DBDFF"
    change_color
elif [[ $1 = "--cyanlight" ]]; then
    MF="#FFC8C3"
    AC="#D5F0EB"
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
