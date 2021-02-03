#!/bin/sh
LOC=$(readlink -f $0)
DIR=$(dirname $LOC)

#wallpaper change
$DIR/wallpaper.sh &

#display menu-bar infomation
$DIR/bar.sh &

#turn off touchpad
$DIR/touchpadoff.sh 

#picom
/usr/bin/picom &

#network trayer
nm-applet & 
#fcitx
sleep  10s
fcitx & 
