return {
	"catppuccin/nvim",
	name = "catppuccin",
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
	cmd = function()
		-- Set colorschme
		vim.cmd("colorscheme catppuccin-mocha")
	end
}
