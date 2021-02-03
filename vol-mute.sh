#!/bin/sh
DIR=$(readlink -f $0)
LOC=$(dirname DIR)

STATUS=$(amixer sget Master | tail -n1 | awk '{ printf $6}' | grep -iEo '[a-z]{2,3}')
if [ $STATUS == 'off' ] ; then
	/usr/bin/amixer -qM set Master unmute
else
	/usr/bin/amixer		-qM set Master mute
fi
usr/bin/sh 		$LOC/menu.sh
unset STATUS DIR LOC
