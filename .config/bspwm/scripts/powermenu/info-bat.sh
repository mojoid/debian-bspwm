#!/usr/bin/bash
# send battery info to notify-send

infobatt="echo -e `cat /sys/class/power_supply/BAT1/{status,capacity}`%"
status_batt="echo -e `cat /sys/class/power_supply/BAT1/status`"
infotheme=`sed -n 2p ~/.config/bspwm/.bspwm | cut -d '"' -f2`
cpu_tmp="echo -e `cat /sys/class/thermal/thermal_zone*/temp | cut -c 1-2`\u00b0C"
capacity_batt="echo -e `cat /sys/class/power_supply/BAT1/capacity`"

if [ $infotheme = iDark ]; then
	icon="$HOME/.config/bspwm/idark/icons" 
elif [ $infotheme = iLight ]; then
	icon="$HOME/.config/bspwm/ilight/icons" 
fi

send_notif() {
	if [[ `$capacity_batt` = 100 ]]; then
		notify-send -i "$icon/info.png" -t 5000 "CPU `$cpu_tmp`" "Battery is FULL `$capacity_batt`%"
	elif [[ `$status_batt` = Charging ]]; then
		notify-send -i "$icon/info.png" -t 5000 "CPU `$cpu_tmp`" "Battery is `$infobatt`"
	elif [[ `$status_batt` = Discharging ]]; then
		notify-send -i "$icon/info.png" -t 5000 "CPU `$cpu_tmp`" "Battery is `$infobatt`"
	fi 
}

send_notif
exit 
