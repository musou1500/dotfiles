vim.opt.compatible = false
vim.opt.modifiable = true
vim.cmd('filetype plugin indent off')

if vim.fn.empty(vim.fn.glob('~/.config/nvim/autoload/plug.vim')) == 1 then
  vim.cmd([[
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim
      \ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  ]])
end

vim.cmd('source ~/.config/nvim/plugins.vim')

for _, f in pairs(vim.fn.split(vim.fn.glob('~/.config/nvim/config/*.vim'), '\n')) do
  vim.cmd('source ' .. f)
end

require("tabscope").setup({})
require("bufferline").setup{}

-- " Automatically close preview window.
-- autocmd CompleteDone * pclose
vim.cmd('autocmd CompleteDone * pclose')

-- " For conceal markers.
if vim.fn.has('conceal') == 1 then
  vim.opt.conceallevel = 0
  vim.opt.concealcursor = 'niv'
end

-- syntax on
vim.cmd([[
  syntax on
  filetype plugin indent on
  set t_Co=256
  set background=dark
  colorscheme gruvbox
]])
