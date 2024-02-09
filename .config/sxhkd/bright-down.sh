#!/bin/bash

BR=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
MAX=$(cat /sys/class/backlight/intel_backlight/max_brightness)

CURR=$((100 * $BR / $MAX))
echo $CURR

if [[ $CURR -gt 4 ]]; then
	echo down!
	NEW=$(($CURR - 5))

	NEWBR=$(($NEW * $MAX / 100))
	
	echo $NEWBR >> /sys/class/backlight/intel_backlight/brightness
fi
