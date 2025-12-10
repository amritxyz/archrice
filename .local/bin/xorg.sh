#!/bin/sh

xset r rate 300 80
setxkbmap -option caps:swapescape
xmodmap -e "keycode 135 = NoSymbol"
