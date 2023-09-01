local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"folke/lazy.nvim",
		opts = { colorscheme = 'catppuccin-frappe' },
	},

	-- Indent line
	{ "lukas-reineke/indent-blankline.nvim" },

	-- Colorschemes
	{ 'sainnhe/sonokai' },
	{ "catppuccin/nvim", name = "catppuccin" },

	-- Syntax highlighting
	{ 'nvim-treesitter/nvim-treesitter' },

	-- Status line plugin
	{ 'nvim-lualine/lualine.nvim', },

	-- Buffer line
	{ 'akinsho/bufferline.nvim', version = "*" },

	-- Nerdtree and icons
	{
		'preservim/nerdtree',
		'ryanoasis/vim-devicons',
	},

	-- Auto pair brackets, quotes...
	{ 'jiangmiao/auto-pairs' },

	-- Html completion
	{ 'mattn/emmet-vim' },

	-- Rust
	{ 'rust-lang/rust.vim' },


	-- LSP Support
	{
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		dependencies = { 'williamboman/mason-lspconfig.nvim' }
	},

	-- Code completion and snippets
	{
		-- Completion
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/nvim-cmp',
		-- For luasnip users.
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip'
	},
});
