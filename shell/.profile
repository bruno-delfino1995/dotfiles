export LANG=en_US.UTF-8
export XDG_CONFIG_HOME=$HOME/.config

# Default programs:
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

# FZF
export FZF_BASE="/usr/local/opt/fzf"
export FZF_DEFAULT_OPTS="--layout=default --height 40%"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

export QT_STYLE_OVERRIDE=gtk
export QT_SELECT=qt5
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS="1;1"

# Disable HiDPI Scaling - Fix font issues with Alacritty (https://github.com/jwilm/alacritty/issues/1501)
export WINIT_HIDPI_FACTOR=1

export GOPATH=$HOME/.go

export PATH="$PATH:$HOME/.local/bin:$GOPATH/bin"
