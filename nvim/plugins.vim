" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'vim-jp/vimdoc-ja'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'scrooloose/nerdcommenter'
Plug 'github/copilot.vim'

Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ }

Plug 'scrooloose/nerdtree'
Plug 'honza/vim-snippets'

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
