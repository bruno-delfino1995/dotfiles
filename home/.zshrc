# Start X Server
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

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

# Secret stuff
[ -e ~/.localrc ] && source ~/.localrc

export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye > /dev/null

