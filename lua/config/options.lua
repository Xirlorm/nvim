local set = vim.opt
local g = vim.g

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
set.redrawtime = 100
set.undofile = true --Enable persistent undo
-- set.omnifunc = 'syntaxcomplete#Complete' --Neovim completion
set.colorcolumn = '81' --Mark max character width
set.signcolumn = 'yes'
-- set.timeoutlen = 1000
-- set.updatetime = 1000
vim.cmd([[
	" Set undo directory
	set undodir=~/.cache/.nvim-undo
	" don't select the first item.
	set completeopt=menu,menuone,noinsert,noselect
]])


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
--  Key Bindings
-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
g.mapleader = 'g' --Set map leader to space
vim.cmd('nnoremap <esc> :noh<return><esc>') -- Unhighlight text using escape key

function OpenTerminal()
    local height = vim.o.lines * 0.25
    vim.cmd('belowright ' .. height .. 'split term://bash')
end

vim.api.nvim_set_keymap('n', '<Leader>t', ':lua OpenTerminal()<CR>', { noremap = true, silent = true })
