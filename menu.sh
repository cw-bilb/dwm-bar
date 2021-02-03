#!/bin/sh
# Dependencies: xorg-xsetroot

LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

SEP1="["
SEP2="]"
#Import the modules
. "$DIR/functions/date.sh"
. "$DIR/functions/battery.sh"
. "$DIR/functions/vol.sh"


#Append results of each func one by one to a string

dispstr=""
dispstr="$dispstr$(menu_date)"
dispstr="$dispstr$(menu_battery)"
dispstr="$dispstr$(menu_vol)"



#display on menu 
xsetroot -name "$dispstr"

unset LOC DIR SEP1 SEP2 dispstr
exit 0
