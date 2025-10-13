alias ks="echo '(｀・ω・´) カスは貴様だ！'"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias g='git'
alias r='cd $(ghq root)/$(ghq list | fzf)'
alias xopen="xdg-open"
alias tf='terraform'
alias ls='ls --color=auto'

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

autoload -Uz compinit && compinit

typeset -U path PATH

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
. "$HOME/.cargo/env"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source ~/dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [ -f /etc/zsh_command_not_found ]; then
  . /etc/zsh_command_not_found
fi
