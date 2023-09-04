local set = vim.opt

set.compatible = false --Enable vim features unavailable in vi
vim.cmd('filetype on') --Enable filetype detection
vim.cmd('filetype plugin on') --Load filetype specific plugins
vim.cmd('filetype indent on') --Enable indentation based on file type

-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--  Editor variables
-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
set.number = false
set.relativenumber = true
set.mouse = 'a'
set.ignorecase = false
set.smartcase = false
set.hlsearch = true
set.breakindent = true
set.tabstop = 2 --Use a tab with of 2 spaces
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = false
set.background = 'dark'
set.cursorline = true
set.autoindent = true
-- set.re = 2
set.ruler = true
set.title = true
set.spell = false
set.wrap = false
set.confirm = true --Confirm changes when exiting
set.wildmenu = true
-- set.visualbell = true
set.scrolloff = 5 --Keep 5 lines above and below cursor
set.nrformats = 'bin' --Use binary increment and decrement
set.encoding = 'utf-8'
set.redrawtime = 800
set.undofile = true --Enable persistent undo
-- set.omnifunc = 'syntaxcomplete#Complete' --Neovim completion
set.colorcolumn = '81' --Mark max character width
set.signcolumn = 'yes'
-- set.timeoutlen = 1000
-- set.updatetime = 1000
set.undodir = vim.fn.expand('~/.cache/.nvim-undo') -- Set undo directory
set.completeopt = 'menu,menuone,noinsert,noselect' -- don't select the first item.

-- Check and enable termguicolors
if vim.fn.has('termguicolors') == 1 then
  set.termguicolors = true
end
