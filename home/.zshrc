# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/bruno/.zshrc'

autoload -Uz compinit colors promptinit
compinit
colors
promptinit
# End of lines added by compinstall

# Aliases
[ -e ~/.zshrc.aliases ] && source ~/.zshrc.aliases

# Plugins
[ -e ~/.zshrc.plugins ] && source ~/.zshrc.plugins

# Secret stuff
[ -e ~/.localrc ] && source ~/.localrc
