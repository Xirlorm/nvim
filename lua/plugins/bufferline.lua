local bufferline = require('bufferline')
bufferline.setup({
	options = {
		themable = false,
		style_preset = {
			bufferline.style_preset.no_italic,
			bufferline.style_preset.no_bold,
		},
		separator_style = "thin",
		name_formatter = function(buf)  -- buf contains:
			return "" .. buf.bufnr .. " " .. buf.name
		end,
		max_name_length = 18,
		truncate_names = true,
		diagnostics = "nvim_lsp",
		color_icons = true;
	}
})
