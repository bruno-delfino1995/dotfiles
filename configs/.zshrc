# Config
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_IGNORE_SPACE
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

# Functions
[ -e ~/.zshrc.functions ] && source ~/.zshrc.functions

# Secret stuff
[ -e ~/.localrc ] && source ~/.localrc

# Configure pinentry to use the correct TTY
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye > /dev/null

# Completions
eval "$(gh completion -s zsh)"

# Prompt
eval "$(starship init zsh)"
