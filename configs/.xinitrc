#!/bin/bash

xrandr --auto
autorandr --change

[ -f ~/.xprofile ] && source ~/.xprofile

exec awesome
