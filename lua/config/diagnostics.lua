-- Configure diagnostics
vim.diagnostic.config({
	virtual_text = false,
	float = { source = "always" },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "✖",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "💡",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
})

-- Show diagnostics in a hover window on CursorHold
vim.o.updatetime = 250
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
	callback = function()
		vim.diagnostic.open_float(nil, { focusable = false, scope = "cursor" })
	end,
})
