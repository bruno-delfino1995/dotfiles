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

# Start X Server
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx
fi

# Aliases
alias ls='ls --color=auto'

source <(antibody init)

antibody bundle robbyrussell/oh-my-zsh folder:lib
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
antibody bundle zsh-users/zsh-history-substring-search
antibody bundle Tarrasch/zsh-bd
antibody bundle halfo/lambda-mod-zsh-theme

AUTOENV_FILE_ENTER=".env"
antibody bundle Tarrasch/zsh-autoenv

[ -f ~/.localrc ] && . ~/.localrc
