local bufferline = require('bufferline')
bufferline.setup({
	options = {
		style_preset = {
			bufferline.style_preset.no_italic,
			bufferline.style_preset.no_bold,
		},
		separator_style = "slant",
		truncate_names = true,
		name_formatter = function(buf)
			return "" .. buf.bufnr .. " " .. buf.name
		end,
		max_name_length = 18,
		diagnostics = "nvim_lsp",
	}
})
