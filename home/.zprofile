typeset -U path
path=($(ruby -rrubygems -e "puts Gem.user_dir")/bin $path[@])

