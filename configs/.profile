export LANG=en_US.UTF-8
export XDG_CONFIG_HOME=$HOME/.config

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh

# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

# FZF
export FZF_BASE="/usr/local/opt/fzf"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND='fd --type d --max-depth 3'
export FZF_DEFAULT_OPTS='--layout=default --height 40%'

export QT_STYLE_OVERRIDE=gtk
export QT_SELECT=qt5
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS="1;1"

# Disable HiDPI Scaling - Fix font issues with Alacritty (https://github.com/jwilm/alacritty/issues/1501)
export WINIT_HIDPI_FACTOR=1

export GOPATH=$HOME/.go
GEM_HOME=$(ruby -e 'puts Gem.user_dir')
export GEM_HOME

export PATH="$PATH:$HOME/.emacs.d/bin:$HOME/.local/bin:$HOME/.cargo/bin:$GOPATH/bin:$GEM_HOME/bin"
