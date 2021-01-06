#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch default bars for non primary monitors
for m in $(xrandr -q | grep '\bconnected\b' | grep -v '\bprimary\b'| cut -d" " -f1); do
  MONITOR=$m polybar --reload secondary &
done

if [[ $(xrandr -q | grep '\bconnected\b' | wc -l) -eq 1 ]]; then
	MONITOR=$(xrandr -q | grep '\bconnected\b' | grep '\bprimary\b' | cut -d" " -f1) \
		polybar --reload default &
else
	MONITOR=$(xrandr -q | grep '\bconnected\b' | grep '\bprimary\b' | cut -d" " -f1) \
		polybar --reload primary &
fi
