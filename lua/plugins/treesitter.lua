return {
	{
		'nvim-treesitter/nvim-treesitter',
		event = 'VeryLazy',
		build = ':TSUpdate',
		config = function()
			require'nvim-treesitter.configs'.setup {
				ensure_installed = { 
					"lua",
					"typescript",
					"vim",
					"vimdoc",
					"c",
					"rust",
					"javascript",
					"html",
					"css",
					"markdown"
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
				},
			}
		end,
	},
}

