set nocompatible

filetype plugin indent off
set modifiable

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source ~/.config/nvim/plugins.vim

for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
  exe 'source' f
endfor

" Automatically close preview window.
autocmd CompleteDone * pclose

" For conceal markers.
if has('conceal')
  set conceallevel=0 concealcursor=niv
endif

syntax on
filetype plugin indent on
set t_Co=256
set background=dark
colorscheme gruvbox

