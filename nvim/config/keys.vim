let mapleader = "\<Space>"

" tab
nnoremap <Leader>h gT
nnoremap <Leader>l gt
nnoremap <Leader>t :<C-u>tabnew<CR>
nnoremap <Leader>q :<C-u>q<CR>

" filer
nmap <Leader>f <Cmd>NERDTreeToggle<CR>
nmap <Leader>/ :call nerdcommenter#Comment('n', 'Toggle')<CR>
xmap <Leader>/ :call nerdcommenter#Comment('x', 'Toggle')<CR>

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

nnoremap <Leader>, :e $MYVIMRC<CR>

" TODO: move to ftplugin
nnoremap <Leader> p :Prettier<CR>

nmap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nmap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nmap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nmap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nmap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nmap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nmap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nmap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nmap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nmap <silent><Tab> :BufferLineCycleNext<CR>
nmap <silent><S-Tab> :BufferLineCyclePrev<CR>

