export LANG=en_US.UTF-8
export XDG_CONFIG_HOME=$HOME/.config

export FZF_BASE="/usr/local/opt/fzf"

export QT_STYLE_OVERRIDE=gtk
export QT_SELECT=qt5
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export "QT_SCREEN_SCALE_FACTORS=1;1"

export GOPATH=$HOME/.go

typeset -U path
export path=(~/.local/bin $GOPATH/bin $path[@])
