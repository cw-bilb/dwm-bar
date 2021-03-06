#!/bin/sh
declare -i ID
ID=$(xinput list | grep -Eio 'touchpad\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}')
declare -i STATE
STATE=$(xinput list-props $ID | grep -i 'device enabled' | awk '{print $4}')
if [ $STATE -eq 1 ] ; then
	xinput disable $ID
else
	xinput enable $ID
fi
unset ID STATE
