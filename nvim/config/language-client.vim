set hidden

set signcolumn=yes

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'php': ['php', $XDG_CONFIG_HOME.'/composer/vendor/felixfbecker/language-server/bin/php-language-server.php'],
    \ 'cpp': ['clangd-8'],
    \ 'c': ['clangd-8'],
    \ }
let g:LanguageClient_hasSnippetSupport=0
let g:LanguageClient_useVirtualText=0
