#!/bin/bash

# shellcheck source=.xprofile
[ -f ~/.xprofile ] && source ~/.xprofile

case $XDG_VTNR in
	1)
		exec awesome
	;;
	2)
		sxhkd &
		exec bspwm
	;;
esac
