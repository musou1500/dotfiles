case $OSTYPE in
  darwin*)
    source "$XDG_DATA_HOME/nvim/plugged/gruvbox/gruvbox_256palette_osx.sh"
    ;;
  *)
    source "$XDG_DATA_HOME/nvim/plugged/gruvbox/gruvbox_256palette.sh"
    ;;
esac
