#!/usr/bin/env bash

shopt -s no_empty_cmd_completion

alias ks="echo '(｀・ω・´) カスは貴様だ！'"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias g='git'
alias r='cd $(ghq root)/$(ghq list | fzf)'
alias xopen="xdg-open"
alias tf='terraform'

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

case $OSTYPE in
  darwin*)
    alias ls='gls --color=auto'
    eval "$(gdircolors)"
    ;;
  *)
    alias ls='ls --color=auto'
    eval "$(dircolors)"
    ;;
esac

export HISTTIMEFORMAT="%d/%m/%y %T "

if [ -f "$HOME/.bashrc.mine" ]; then
  source "$HOME/.bashrc.mine"
fi


eval "$(direnv hook bash)"
eval "$(starship init bash)"
source "$HOME/.rye/env"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# ble
source ~/.local/share/blesh/ble.sh
ble-face filename_@=none
bleopt filename_ls_colors="$LS_COLORS"

# tmux
# http://qiita.com/ssh0/items/a9956a74bff8254a606a
if [[ -z $TMUX && $- == *i* && $TERM_PROGRAM != "vscode" && $VSCODE_RESOLVING_ENVIRONMENT != "1" ]]; then
  # get the IDs
  create_new_session="Create New Session"
  ID="`tmux list-sessions`"
  if [[ -n "$ID" ]]; then
    ID=$ID$'\n'$create_new_session
  else
    ID=$create_new_session
  fi

  ID="`echo "$ID" | fzf | cut -d: -f1`"
  if [[ "$ID" = "$create_new_session" ]]; then
    exec tmux new-session
  elif [[ -n "$ID" ]]; then
    exec tmux attach-session -t "$ID"
  fi
fi


