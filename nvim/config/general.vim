set mouse=a
set guioptions+=a

set backspace=indent,eol,start
set cursorline

if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

set termguicolors
set number
set cmdheight=1
set laststatus=2
set showcmd
set display=lastline
" set ambiwidth=double

set showmatch matchtime=1
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

set wrapscan
set incsearch
set hlsearch
set ignorecase

set wildmenu
set clipboard=unnamedplus
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set backupdir=/tmp/vim_backup
set noswapfile
set nowritebackup
set nobackup
set updatetime=1000

function! s:check_backup_dir()
    if !isdirectory(&backupdir)
        call mkdir(&backupdir, "p")
    endif
endfunction

augroup backup_dir
    autocmd!
    autocmd FileType * call s:check_backup_dir()
augroup END
