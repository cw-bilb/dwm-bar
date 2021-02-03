#!/bin/sh

function menu_battery(){
	printf "%s" "$SEP1"
	CHARGE=$(cat /sys/class/power_supply/BAT1/capacity)
	STATUS=$(cat /sys/class/power_supply/BAT1/status)
	
	printf "BAT %s%% %s" $CHARGE $STATUS
	printf "%s" "$SEP2"
		
}
unset CHARGE STATUS
