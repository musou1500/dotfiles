" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'vim-jp/vimdoc-ja'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'scrooloose/nerdcommenter'

Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ }

Plug 'scrooloose/nerdtree'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neoinclude.vim'

Plug 'vim-airline/vim-airline'
Plug 'rust-lang/rust.vim'

" カラースキーム
Plug 'morhetz/gruvbox'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()
