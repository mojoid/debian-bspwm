#!/usr/bin/bash
on_ac_power
PREVIOUS=$(echo $?)

while true
do
	on_ac_power
	CURRENT=$(echo $?)
		
		if [ $CURRENT -ne $PREVIOUS ]; then
				sleep 5
				echo `~/.config/bspwm/scripts/powermenu/info-bat1.sh`
				PREVIOUS=$(echo $CURRENT)
		fi
		sleep 1
done


