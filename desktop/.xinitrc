#!/bin/bash

# shellcheck source=.xprofile
[ -f ~/.xprofile ] && source ~/.xprofile

exec bspwm

