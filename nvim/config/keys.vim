let mapleader = "\<Space>"

" tab
nnoremap <Leader>h gT
nnoremap <Leader>l gt
nnoremap <Leader>t :<C-u>tabnew<CR>
nnoremap <Leader>q :<C-u>q<CR>

" filer
nnoremap <Leader>f :NERDTreeToggle<CR>
nmap <Leader>/ :call NERDComment('n', 'Toggle')<CR>
xmap <Leader>/ :call NERDComment('x', 'Toggle')<CR>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <Leader>o :GFiles<CR>
nnoremap <Leader>O :GFiles!<CR>

nnoremap <Leader>g :Rg<Space>
nnoremap <Leader>G :Rg!<Space>
nnoremap <Leader>bl :Buffers<CR>
nnoremap <Leader>bo :BDeleteOther<CR>
nnoremap <Leader>bd :BDelete<CR>

nnoremap <Leader>, :tabnew \| e $MYVIMRC<CR>

" TODO: move to ftplugin
nnoremap <Leader> p :Prettier<CR>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader><S-Tab> <Plug>AirlineSelectPrevTab
nmap <leader><Tab> <Plug>AirlineSelectNextTab
