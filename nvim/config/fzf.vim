" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \ 'rg --column --line-number --hidden --ignore-case --no-heading --color=always -g "!.git" '.shellescape(<q-args>), 1,
      \ <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
      \ : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%', '?'),
      \ <bang>0)


" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir GFiles
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

function! s:delete_other_buffers()
  let bufinfos = filter(getbufinfo(), {_, val -> empty(val.windows) && val.bufnr != bufnr("%")})
  execute 'bwipeout' join(map(bufinfos, {_, val -> val.bufnr}))
endfunction

command! BDeleteOther call s:delete_other_buffers()
command! BDelete call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind alt-a:select-all'
\ }))

