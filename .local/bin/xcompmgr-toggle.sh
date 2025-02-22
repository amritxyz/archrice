#!/bin/sh
if pgrep -x "xcompmgr" > /dev/null
then
	pkill xcompmgr
else
	xcompmgr
fi
