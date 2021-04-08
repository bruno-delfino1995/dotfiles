#!/bin/bash

xrandr --auto
autorandr --change

[ -f ~/.xprofile ] && source ~/.xprofile

systemctl --user start autostart.target

exec awesome
