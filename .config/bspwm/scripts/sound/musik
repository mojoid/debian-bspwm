#!/usr/bin/env bash

idir="$HOME/.config/bspwm/.bspwm"
source $idir

case $MUSIC in
	on)
		$NOTIFIER -r 13 -i "$ICONDIR/media-playpause.png" -t 1500 -u low "Music" "Stop"
		sed -i '6s_.*_MUSIC="off"_' $idir
		killall cmus
		;;
	off)
		$NOTIFIER -r 13 -i "$ICONDIR/media-playpause.png" -t 1500 -u low "Music" "Play"
		sed -i '6s_.*_MUSIC="on"_' $idir
		urxvt -name 'music' -e cmus
		;;
	*)
		sed -i '6s_.*_MUSIC="off"_' $idir
		killall cmus
		;;
esac

