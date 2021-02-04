#!/bin/sh
function menu_vol(){

	STATUS=$(amixer sget Master | tail -n1 | awk  '{printf $6}' | grep -iEo '[a-z]{2,3}')
	VOL=$(amixer sget Master | tail -n1 | awk '{printf $4}' | grep -iEo '[0-9]{1,3}')

	printf "%s" "$SEP1"
	
	printf "VOL-%s %s" "$STATUS $VOL"
	
	printf "%s" "$SEP2"


}
unset STATUS VOL
