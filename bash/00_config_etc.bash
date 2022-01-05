alias ks="echo '(｀・ω・´) カスは貴様だ！'"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias g='git'
alias r='cd $(ghq root)/$(ghq list | fzf)'
alias xopen="xdg-open"
alias ion="ionic"
alias git='hub'
alias tf='terraform'

case $OSTYPE in
  darwin*)
    alias ls='ls -G'
    ;;
  *)
    alias ls='ls --color=auto'
    ;;
esac

export HISTTIMEFORMAT="%d/%m/%y %T "

export NVM_DIR="${XDG_DATA_HOME}/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ -f "$HOME/.bashrc.mine" ]; then
  source "$HOME/.bashrc.mine"
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
