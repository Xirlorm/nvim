return {
	"stevearc/conform.nvim",
	event = "BufReadPost",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			markdown = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			html = { "prettier" },
			python = { "black", "isort" },
			rust = { "rustfmt", lsp_format = "fallback" },
			javascript = { "prettier", "eslint" },
			javascriptreact = { "prettier", "eslint" },
			typescript = { "prettier", "eslint" },
			typescriptreact = { "prettier", "eslint" },
			json = { "prettier", "eslint" },
			c = { "clang-format" },
			cpp = { "clangd-format" },
			go = { "goimports", "gofmt" },
		},
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 500,
		},
		notify_on_error = true,
	},
}
