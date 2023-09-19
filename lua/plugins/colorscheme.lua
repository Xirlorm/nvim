return {
	{
		"sainnhe/sonokai",
		lazy = "true",
		config = function()
			local g = vim.g
			-- andromeda, maia, atlantis, shusia, espresso
			g.sonokai_style = "atlantis"
			g.sonokai_better_performance = 1
			g.sonokai_dim_foreground = 0
			g.sonokai_dim_inactive_windows = 1
			g.sonokai_enable_italic_comment = 1
			g.sonokai_transparent_background = 0
			g.sonokai_menu_selection_background = "green"
			g.sonokai_disable_terminal_colors = 1
			g.sonokai_show_eob = 0
		end,
	},
	{ 
		"catppuccin/nvim",
		name = "catppuccin",
		event = "VeryLazy",
		priority = 1000,
		opts = {
				show_end_of_buffer = true,
				term_colors = true,
				dim_inactive = { enabled = true, },
				no_italic = false,
				no_bold = false,
				styles = {
						comments = { "italic" },
						keywords = { "italic" },
						properties = { "italic" },
						types = { "italic" },
				},
				integrations = {
					cmp = true,
					nvimtree = true,
					treesitter = true,
					bufferline = true,
				},
			},
		init = function()
			-- Turn on syntax highlighting
			vim.cmd.syntax("on")
			-- Set colorscheme
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
}
