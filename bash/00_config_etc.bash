alias ks="echo '(｀・ω・´) カスは貴様だ！'"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias g="git"
alias xopen="xdg-open"
alias ion="ionic"
alias ls='ls --color=auto'

export HISTTIMEFORMAT="%d/%m/%y %T "
eval $(dircolors $HOME/.dircolors)
if [ -f "$HOME/.bashrc.mine" ]; then
  source "$HOME/.bashrc.mine"
fi

