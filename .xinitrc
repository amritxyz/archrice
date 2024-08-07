#!/bin/sh
xset r rate 300 50 &
slstatus &
sxhkd &
picom &
xwallpaper --stretch .local/share/void-wall/1.jpg &&
exec dwm
