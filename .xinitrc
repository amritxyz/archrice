#!/bin/sh
xset s off &
xset -dpms &
xset s noblank &
xset r rate 300 50 &
slstatus &
xcompmgr &
xwallpaper --stretch .local/share/void-wall/1.jpg &&
exec dwm > /dev/null 2>&1
