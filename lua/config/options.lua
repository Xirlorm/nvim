local set = vim.opt
local g = vim.g

set.compatible = false --Enable vim features unavailable in vi
vim.cmd('filetype on') --Enable filetype detection
vim.cmd('filetype plugin on') --Load filetype specific plugins
vim.cmd('filetype indent on') --Enable indentation based on file type
vim.cmd("syntax on") -- Enable syntax highlighting

--  Editor variables
set.number = true -- Enable line numbering
set.relativenumber = false -- Disalbe line relative line numbering
set.mouse = 'a' -- Enable mouse
set.ignorecase = false
set.smartcase = false
set.hlsearch = true -- Highlight search
set.breakindent = true
set.tabstop = 2 -- Use a tab width of 2 spaces
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = false
set.background = 'dark'
set.cursorline = true  -- Highlight current line with cursor
set.autoindent = true -- Enable autoindent
-- set.re = 2
set.ruler = true
set.title = true
set.spell = false -- Disable specll check
set.wrap = false -- Disable text wrapping
set.confirm = true -- Prompts user on unsaved edited file when exiting
set.wildmenu = true
-- set.visualbell = true
set.scrolloff = 5 -- Keep 5 lines above and below cursor
set.nrformats = 'bin' -- Use binary increment and decrement
set.encoding = 'utf-8'
set.redrawtime = 800
set.undofile = true -- Enable persistent undo
set.omnifunc = 'syntaxcomplete#Complete' -- Enable Neovim completion
set.colorcolumn = '100,120' -- Character width ruler
set.signcolumn = 'yes'
-- set.timeoutlen = 1000
-- set.updatetime = 1000
set.undodir = vim.fn.expand('~/.cache/nvim-undo') -- Set undo directory
set.completeopt = 'menu,menuone,noinsert,noselect' -- Don't select first item in predictions
set.list = false
g.mapleader = ' ' --Set Space Key as map leader
g.rustfmt_autosave = 1 -- Format rust code on save

if vim.fn.has('termguicolors') == 1 then -- Enable termguicolors if available
	set.termguicolors = true
end

