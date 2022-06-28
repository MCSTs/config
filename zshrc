export MALLOC_TRACE 'memcheck.log'
export EDITOR '/usr//bin/vim'

# === FZF
#
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX_HEIGHT='80%'

export FZF_DEFAULT_OPTS='--bind ctrl-e:down,ctrl-u:up --preview " (bat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_PREVIEW_COMMAND='(bat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
export FZF_DEFAULT_COMMAND='fdfind --hidden --follow -E ".git" -E "node_modules" . /root'

#source ~/github/fzf-tab/fzf-tab/fzf-tab.plugin.zsh
source ~/github/fzf-config/completion.zsh


alias ra='ranger'
alias ll='ls -alF'
alias l='ls -F'
alias s='neofetch'
alias cs='cowsay'
alias lg='lazygit'
