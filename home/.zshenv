export LANG=en_US.UTF-8
export XDG_CONFIG_HOME=$HOME/.config
export QT_STYLE_OVERRIDE=gtk
export QT_SELECT=qt5

export GOPATH=$HOME/.go

typeset -U path
export path=(~/.local/bin $GOPATH/bin $path[@])
