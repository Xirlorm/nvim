return {
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		version = "*",
		init = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					themable = true,
					indicator = {
						icon = "▎",
						style = "icon",
					},
					style_preset = {
						bufferline.style_preset.no_italic,
						bufferline.style_preset.no_bold,
					},
					separator_style = "thick",
					name_formatter = function(buf)
						return "" .. buf.bufnr .. " " .. buf.name
					end,
					max_name_length = 18,
					truncate_names = true,
					diagnostics = "nvim_lsp",
					color_icons = true,
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		version = "*",
		opts = {
			options = {
				icons_enabled = true,
				theme = "catppuccin-macchiato",
				--       │
				component_separators = {
					left = "",
					right = "",
				},
				section_separators = {
					left = "",
					right = "",
				},
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{ "branch" },
					{ "diff" },
					{
						"diagnostics",
						sources = { "nvim_lsp" },
						sections = {
							"error",
							"warn",
							"info",
							"hint",
						},
						-- 
						symbols = {
							error = "✖:",
							warn = ":",
							info = "ℹ:",
							hint = "h:",
						},
						colored = true,
						update_in_insert = true,
					},
				},
				lualine_c = { "selectioncount" },
				lualine_x = {
					"encoding",
					"fileformat",
					"filetype",
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_c = { "filename" },
				lualine_x = { "location" },
			},
			extensions = {
				"fzf",
				"nerdtree",
			},
		},
	},
}
