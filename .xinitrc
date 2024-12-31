#!/bin/sh
xwallpaper --stretch .local/share/void-wall/dwm.jpg &
setxkbmap -option caps:swapescape &
xset s off
xset -dpms
xset s noblank
xset r rate 300 50 &
xcompmgr &
slstatus &
exec dwm
