export CLICOLOR=1

if [ -f "$HOME/.dircolors" ]; then
  case $OSTYPE in
    darwin*)
      eval $(gdircolors "$HOME/.dircolors")
      ;;
    *)
      eval $(dircolors "$HOME/.dircolors")
      ;;
  esac
fi

export LSCOLORS=ExGxcxdxCxegedabagacad
