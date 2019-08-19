if !exists('g:neoinclude#exts')
  let g:neoinclude#exts = {}
endif

let g:neoinclude#exts.typescript = ['ts', 'tsx', 'js', 'jsx']

if !exists('g:neoinclude#patterns')
  let g:neoinclude#patterns = {}
endif

" dynamic import: `import('./foo')`
" CommonJS: `require('foo')`
" ES Modules import: `import foo from 'bar'` or `import 'foo'`
let g:neoinclude#patterns.typescript = 
      \ '\v(<from>\s*(''|")|<(import|require)>\s*\((''|")|<import>\s*(''|"))'
if !exists('g:neoinclude#delimiters')
  let g:neoinclude#delimiters = {}
endif

let g:neoinclude#delimiters.typescript = '/'

if !exists('g:neoinclude#reverse_exprs')
  let g:neoinclude#reverse_exprs = {}
endif

let g:neoinclude#reverse_exprs.typescript =
      \ 'fnamemodify(v:fname, ":r")'
