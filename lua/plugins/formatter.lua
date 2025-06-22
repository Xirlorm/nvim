return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettier", "prettierd", stop_after_first = true },
				go = { "goimports", "gofmt" },
				css = { "prettier", "prettierd" },
				scss = { "prettier", "prettierd" },
				html = { "prettier", "prettierd" },
				c = { "clangd" },
				cpp = { "clangd" },
			},
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
			notify_on_error = true,
		})
	end,
}
