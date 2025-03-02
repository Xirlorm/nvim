-- Show line diagnostics in hover window
vim.diagnostic.config({ virtual_text = false, float = { source = 'always' }})
vim.o.updatetime = 250
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
  callback = function ()
    vim.diagnostic.open_float(nil, {focusable = false, scope = "cursor"})
  end
})
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focusable = false })]]

-- Diagnostic signs
local signs = { Error = "✖", Warn = "", Hint = "💡", Info = "" }

-- Set diagnostic signs
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, numhl = hl })
end

