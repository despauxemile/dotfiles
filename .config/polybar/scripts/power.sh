#!/usr/bin/sh

#STATUS=$(cat /sys/class/power_supply/BAT0/status)
#if [[ $STATUS == "Charging" || $STATUS == "Full" ]]; then
#	exit
#fi

	CUR=$(cat /sys/class/power_supply/BAT0/current_now)
VOLT=$(cat /sys/class/power_supply/BAT0/voltage_now)

POW=$(awk -v c=$CUR -v v=$VOLT 'BEGIN { printf("%.2f\n", c*v/1000000/1000000) }')

echo $POW
