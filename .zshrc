alias ks="echo '(｀・ω・´) カスは貴様だ！'"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias g='git'
alias r='cd $(ghq root)/$(ghq list | fzf)'
alias xopen="xdg-open"
alias tf='terraform'
alias ls='ls --color=auto'

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source ~/dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ -z $TMUX && $- == *i* && $TERM_PROGRAM != "vscode" && $VSCODE_RESOLVING_ENVIRONMENT != "1" ]]; then
  # get the IDs
  create_new_session="Create New Session"
  ID=$(tmux list-sessions)
  if [[ -n "$ID" ]]; then
    ID=$ID$'\n'$create_new_session
  else
    ID=$create_new_session
  fi

  ID=$(echo "$ID" | fzf | cut -d: -f1)
  if [[ "$ID" = "$create_new_session" ]]; then
    exec tmux new-session
  elif [[ -n "$ID" ]]; then
    exec tmux attach-session -t "$ID"
  fi
fi

