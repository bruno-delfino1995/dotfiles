xrandr --auto

autorandr --change

xrdb -I$HOME ~/.Xresources

xsetroot -cursor_name left_ptr
hsetroot -solid '#262729'

xset s on
xset s 600
xss-lock lock &

exec bspwm

