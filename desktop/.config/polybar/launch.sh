#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch default bars for non primary monitors
for m in $(xrandr --query | grep '\bconnected\b' | grep -v '\bprimary\b'| cut -d" " -f1); do
  MONITOR=$m polybar --reload default &
done

MONITOR=$(xrandr --query | grep '\bconnected\b' | grep '\bprimary\b'| cut -d" " -f1) \
  polybar --reload primary &
