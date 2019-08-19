let g:startify_files_number = 5
let g:startify_list_order = [
        \ ['♲  最近使ったファイル(カレントディレクトリ下):'],
        \ 'dir',
        \ ['☺  ブックマーク:'],
        \ 'bookmarks',
        \ ]
let g:startify_bookmarks = ["~/.config/nvim", "~/.config/bash"]
let g:startify_change_to_vcs_root = 1


function! s:filter_header(lines) abort
    let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
    let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
    return centered_lines
endfunction


let g:startify_custom_header = s:filter_header([
    \ '　　　　　＿_)ヽ／/_',
    \ '　　　　　＞ ＼/／＜',
    \ '　　　／￣￣￣￣＼＼＞',
    \ '　　／　/　　　　 ＼ヽ',
    \ '　 /　 ｜　 ｜＼ Ｘ Ｖ',
    \ '　｜　/∧ ｜/ ⌒ＶＸ｜',
    \ '　｜ /ﾚ==ﾚｲ/ﾚ==、Ｖ ｜',
    \ '　｜∧ﾏ●　 ｲ●ｿ /へ｜',
    \ '　｜从 ￣`　 ￣ /ｲ6ﾉ｜',
    \ '　｜ 人　 ＿　 ／￣ ｜',
    \ '　ﾉｲ | ＞､＿ イ | | 人',
    \ '　 ヽ从|∧　／ヽ从|/',
    \ '　　 ／{⌒只⌒}　＼',
    \ '　　/Ｙくノヽ＞　 ∧',
    \ '　 ｜｜　 Ｖ/　　/ ｜',
    \ '　 / 人　 //　　｜ ｜' ])
