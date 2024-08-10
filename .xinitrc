#!/bin/sh
xset r rate 300 50 &
slstatus &
xcompmgr &
xwallpaper --stretch .local/share/void-wall/dwm.jpg &&
exec dwm > /dev/null 2>&1
