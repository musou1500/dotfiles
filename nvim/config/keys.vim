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
nnoremap <Leader>b :Buffers<CR>

nnoremap <Leader>, :tabnew \| e $MYVIMRC<CR>

" TODO: move to ftplugin
nnoremap <Leader> p :Prettier<CR>

