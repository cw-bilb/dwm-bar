#!/bin/sh
DIR=$(readlink -f $0)
LOC=$(dirname DIR)

/usr/bin/amixer		-qM set Master	5%- unmute
/usr/bin/sh 		$LOC/menu.sh
unset DIR LOC
