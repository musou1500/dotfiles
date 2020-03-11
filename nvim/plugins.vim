" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'vim-jp/vimdoc-ja'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/tagbar-phpctags', { 'for': 'php', 'do': 'chmod +x bin/phpctags'}
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
Plug 'rhysd/vim-clang-format', { 'for': ['c', 'cpp'] }

" handlebars
Plug 'mustache/vim-mustache-handlebars'

" js syntax
Plug 'pangloss/vim-javascript'
Plug 'GutenYe/json5.vim'

Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ 'tag': '0.2.7'
      \ }

" nim
Plug 'zah/nim.vim'

" elixir
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

" elm
Plug 'ElmCast/elm-vim'

" Ruby
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'


Plug 'digitaltoad/vim-pug'
Plug 'jiangmiao/auto-pairs'
Plug 'cespare/vim-toml'
Plug 'scrooloose/nerdtree'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neoinclude.vim'

Plug 'godlygeek/tabular'
Plug 'gabrielelana/vim-markdown'

Plug 'mhinz/vim-startify'
Plug 'HerringtonDarkholme/yats.vim'

Plug 'itchyny/lightline.vim'
Plug 'rust-lang/rust.vim'
Plug 'kana/vim-tabpagecd'

" カラースキーム
Plug 'morhetz/gruvbox'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'Shougo/echodoc.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()
