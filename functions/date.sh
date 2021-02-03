#!/bin/sh
menu_date(){
	printf "%s" $SEP1
	printf "DATE %s" "$(date "+%Y-%m-%d %H:%M:%S")" 
	printf "%s\n" $SEP2
}
