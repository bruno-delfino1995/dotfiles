#!/bin/bash

# shellcheck source=.xprofile
[ -f ~/.xprofile ] && source ~/.xprofile

case $XDG_VTNR in
	1)
		sxhkd &
		exec bspwm
	;;
	2)
		exec awesome
	;;
esac
