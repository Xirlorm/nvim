return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				markdown = { "prettier", "prettierd", stop_after_first = true },
				css = { "prettier", "prettierd" },
				scss = { "prettier", "prettierd" },
				html = { "prettier", "prettierd" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettier", "prettierd", stop_after_first = true },
				json = { "prettier", "prettierd", stop_after_first = true },
				c = { "clangd" },
				cpp = { "clangd" },
				go = { "goimports", "gofmt" },
			},
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
			notify_on_error = true,
		})
	end,
}
