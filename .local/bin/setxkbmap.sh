#!/bin/sh

setxkbmap -option caps:swapescape &
xmodmap -e "keycode 135 = NoSymbol"
