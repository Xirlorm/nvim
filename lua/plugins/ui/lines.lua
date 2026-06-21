return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		event = "BufEnter",
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					themable = true,
					indicator = { icon = "●", style = "icon" },
					style_preset = {
						bufferline.style_preset.no_italic,
						bufferline.style_preset.no_bold,
					},
					separator_style = "slant",
					name_formatter = function(buf)
						return "" .. buf.bufnr .. " " .. buf.name
					end,
					max_name_length = 18,
					truncate_names = true,
					diagnostics = "nvim_lsp",
					color_icons = true,
				},
				highlights = {
					indicator_selected = { fg = "#aaff88" },
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		version = "*",
		event = "BufEnter",
		opts = {
			options = {
				theme = "catppuccin-macchiato",
				--    
				--    
				-- │
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_c = { "filename", "selectioncount" },
			},
			extensions = { "fzf", "nerdtree" },
		},
	},
}
