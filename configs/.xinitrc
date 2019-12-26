#!/bin/bash

xrandr --setprovideroutputsource modesetting NVIDIA-0
nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
xrandr --auto
autorandr --change

[ -f ~/.xprofile ] && source ~/.xprofile

exec awesome
