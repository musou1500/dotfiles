# http://qiita.com/ssh0/items/a9956a74bff8254a606a
if [[ -z $TMUX && $- == *i* && $TERM_PROGRAM != "vscode" ]]; then
  # get the IDs
  source "$BASH_IT_CUSTOM/gruvbox_256palette.plugin.bash"
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
