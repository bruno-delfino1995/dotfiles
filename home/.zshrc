# Config
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# Completion
zstyle :compinstall filename '/home/bruno/.zshrc'

autoload -Uz compinit colors promptinit
compinit
colors
promptinit

# Plugins
[ -e ~/.zshrc.plugins ] && source ~/.zshrc.plugins

# Aliases
[ -e ~/.zshrc.aliases ] && source ~/.zshrc.aliases

# Secret stuff
[ -e ~/.localrc ] && source ~/.localrc
