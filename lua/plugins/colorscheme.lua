return {
	{
		'sainnhe/sonokai',
		event = 'VeryLazy',
		config = function()
			local g = vim.g
			-- andromeda, maia, atlantis, shusia, espresso
			g.sonokai_style = 'atlantis'
			g.sonokai_better_performance = 1
			g.sonokai_dim_foreground = 0
			g.sonokai_dim_inactive_windows = 1
			g.sonokai_enable_italic_comment = 1
			g.sonokai_transparent_background = 0
			g.sonokai_menu_selection_background = 'green'
			g.sonokai_disable_terminal_colors = 1
			g.sonokai_show_eob = 0
		end,
	},
	{ 
		"catppuccin/nvim",
		name = "catppuccin",
		event = 'VeryLazy',
		priority = 1000,
		opt = {
			flavour = "macchiato", -- latte, frappe, macchiato, mocha
			background = { -- :h background
					light = "latte",
					dark = "macchiato",
			},
			transparent_background = false, -- disables setting the background color.
			show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
			term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
			dim_inactive = {
				enabled = true, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			no_underline = false, -- Force no underline
			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
					comments = { "italic" }, -- Change the style of comments
					conditionals = { "italic" },
			},
			color_overrides = {},
			custom_highlights = {},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = false,
				bufferline = true,
				-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			},
		},
		init = function()
			-- Turn on syntax highlighting
			vim.cmd.syntax('on')
			-- Set colorscheme
			vim.cmd.colorscheme('catppuccin-frappe')
		end,
	},
}
