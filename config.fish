set -gx MALLOC_TRACE 'memcheck.log'
set -gx EDITOR '/usr/bin/vim'

set -gx FZF_DEFAULT_COMMAND 'fdfind --hidden --follow -E ".git" -E "node_modules" . /home'
set -gx FZF_DEFAULT_OPTS '--height 60% --layout=reverse --border --preview "bat --style=numbers --color=always --line-range :500 {}" '


alias ra='ranger'
alias ll='ls -alF'
alias l='ls -F'
alias s='neofetch'
alias cs='cowsay'
alias d='date'
alias t='tmux'
alias lg='lazygit'
