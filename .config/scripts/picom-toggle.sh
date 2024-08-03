#!/bin/bash
if pgrep -x "picom" > /dev/null
then
	pkill picom
else
	picom -b --config ~/.config/picom/picom.conf
fi
