export LANG=en_US.UTF-8

export XDG_CONFIG_HOME=$HOME/.config

export GEM_HOME=$HOME/.gem

export GOPATH=$HOME/.go

typeset -U path
export path=($(ruby -rrubygems -e "puts Gem.user_dir")/bin ~/.local/bin ~/.go/bin $path[@])