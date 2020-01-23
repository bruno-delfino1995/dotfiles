xrandr --auto

autorandr --change

xrdb -I$HOME ~/.Xresources

xsetroot -cursor_name left_ptr
hsetroot -solid '#262729'

redshift -P -O 5000

xset s on
xset s 600
xss-lock lock &

clipster -d &
sxhkd &
picom &

exec bspwm

