#!/usr/bin/env bash
source ~/.config/bspwm/.bspwm
# kill ui
killall dunst 
killall polybar
killall lxpolkit
killall picom

colors-bar-light() {
	cat > ~/.config/bspwm/rofi/color-bar.rasi <<EOF
/* colors for powermenu, promptmenu, shot */

* {  
  accent:           			#B379F2;
  background:       		#F9F9F9;
  background-light: 	#F0F0F0;
  foreground:       		#FF80C3;
  fg-selected:				#F9F9F9;
}
EOF
}
colors-bar-dark() {
cat > ~/.config/bspwm/rofi/color-bar.rasi <<EOF
/* colors for powermenu, promptmenu, shot */

* {
	accent:						#B379F2;
	background:				#282828;
	background-light:		#333333;
	foreground:					#BDBDBD;
	fg-selected:					#282828;
}
EOF
}

set_light() {
	colors-bar-light
	# polybar
	sed -i -e 's/background = #.*/background = #FDFDFD/g' ~/.config/bspwm/panel/colors.ini
	sed -i -e 's/foreground = #.*/foreground = #8F8F8F/g' ~/.config/bspwm/panel/colors.ini
	# rofi
	sed -i -e "s/background:.*/background: #FDFDFDFF;/g" ~/.config/bspwm/rofi/colors.rasi
	sed -i -e "s/foreground:.*/foreground: #8F8F8FFF;/g" ~/.config/bspwm/rofi/colors.rasi
	# GTK
	sed -i 's_gtk-theme-name=.*_gtk-theme-name="vimix"_g' ~/.gtkrc-2.0
	sed -i 's_gtk-theme-name=.*_gtk-theme-name=vimix_g' ~/.config/gtk-3.0/settings.ini
	# Cursor
	sed -i 's_Inherits=.*_Inherits=Bibata-Modern-Ice_g' ~/.icons/default/index.theme
	sed -i 's_gtk-cursor-theme-name=.*_gtk-cursor-theme-name="Bibata-Modern-Ice"_g' ~/.gtkrc-2.0
	sed -i 's_gtk-cursor-theme-name=.*_gtk-cursor-theme-name=Bibata-Modern-Ice_g' ~/.config/gtk-3.0/settings.ini
	# Icon
	sed -i 's_gtk-icon-theme-name=.*_gtk-icon-theme-name="Sardi-Orb-Colora"_g' ~/.gtkrc-2.0
	sed -i 's_gtk-icon-theme-name=.*_gtk-icon-theme-name=Sardi-Orb-Colora_g' ~/.config/gtk-3.0/settings.ini
	#sed -i '4s\icon_theme=.*\icon_theme=ilight\' ~/.config/qt5ct/qt5ct.conf
	# Geany
	sed -i '23s/color_scheme=.*/color_scheme=/' ~/.config/geany/geany.conf
	}
set_dark() {
	colors-bar-dark
	# polybar
	sed -i -e 's/background = #.*/background = #353535/g' ~/.config/bspwm/panel/colors.ini
	sed -i -e 's/foreground = #.*/foreground = #FDFDFD/g' ~/.config/bspwm/panel/colors.ini
	# rofi
	sed -i -e "s/background:.*/background: #353535FF;/g" ~/.config/bspwm/rofi/colors.rasi
	sed -i -e 's/foreground:.*/foreground: #FDFDFDFF;/g' ~/.config/bspwm/rofi/colors.rasi
	# GTK
	sed -i 's_gtk-theme-name=.*_gtk-theme-name="vimix-dark"_g' ~/.gtkrc-2.0
	sed -i 's_gtk-theme-name=.*_gtk-theme-name=vimix-dark_g' ~/.config/gtk-3.0/settings.ini
	# Cursor
	sed -i 's_Inherits=.*_Inherits=Bibata-Modern-Classic_g' ~/.icons/default/index.theme
	sed -i 's_gtk-cursor-theme-name=.*_gtk-cursor-theme-name="Bibata-Modern-Classic"_g' ~/.gtkrc-2.0
	sed -i 's_gtk-cursor-theme-name=.*_gtk-cursor-theme-name=Bibata-Modern-Classic_g' ~/.config/gtk-3.0/settings.ini
	# Icon
	sed -i 's_gtk-icon-theme-name=.*_gtk-icon-theme-name="Sardi-Orb-Colora"_g' ~/.gtkrc-2.0
	sed -i 's_gtk-icon-theme-name=.*_gtk-icon-theme-name=Sardi-Orb-Colora_g' ~/.config/gtk-3.0/settings.ini
	#sed -i '4s\icon_theme=.*\icon_theme=idark\' ~/.config/qt5ct/qt5ct.conf
	# Geany
	sed -i '23s/color_scheme=.*/color_scheme=dark-fruit-salad.conf/' ~/.config/geany/geany.conf
	}
case "$1" in
	1)
	sed -i '2s_.*_THEME="iDark"_' ~/.config/bspwm/.bspwm
	set_dark ;;
	2)
	sed -i '2s_.*_THEME="iLight"_' ~/.config/bspwm/.bspwm
	set_light ;;
	*)
	case "$THEME" in
		iLight)	
		sed -i '2s_.*_THEME="iDark"_' ~/.config/bspwm/.bspwm
		set_dark ;;
		iDark) 
		sed -i '2s_.*_THEME="iLight"_' ~/.config/bspwm/.bspwm
		set_light ;;
		*)
		sed -i '2s_.*_THEME="iLight"_' ~/.config/bspwm/.bspwm
		set_light ;;
	esac
	;;
esac
bspc wm -r; sleep 0.5s
~/.config/bspwm/startup &> /dev/null

