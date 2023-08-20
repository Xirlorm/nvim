vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- plugin manager
	use { 'wbthomason/packer.nvim' }

	-- Colorschemes
	use {
		'sainnhe/edge',
		'sainnhe/sonokai',
		'joshdick/onedark.vim',
		-- 'nanotech/jellybeans.vim',
		-- 'folke/tokyonight.nvim',
		-- 'EdenEast/nightfox.nvim',
	}

	-- Syntax highlighting
	use { 'nvim-treesitter/nvim-treesitter' }

	-- Status line plugin
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Nerdtree and icons
	use {
		'preservim/nerdtree',
		'ryanoasis/vim-devicons',
	}

	-- Auto pair brackets, quotes...
	use { 'jiangmiao/auto-pairs' }

	--Linter
	use { 'w0rp/ale' }

	-- Completion
	--[[ use {
		'skywind3000/vim-auto-popmenu',
		requires = {'skywind3000/vim-dict'},
	}]]

	-- Html completion
	use { 'mattn/emmet-vim' }

	-- Rust plugin
	use { 'rust-lang/rust.vim' }


	-- LSP Support
	use {
		'williamboman/mason.nvim',
		requires = {
			'williamboman/mason-lspconfig.nvim',
		}
	}

	-- Completion and snippet plugins
	use {
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
	}
end)
