return {
	{
		"williamboman/mason.nvim",
		opts = {},
		event = "VeryLazy",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"html",
				"emmet_language_server",
				"cssls",
				"cssmodules_ls",
				"ts_ls",
				"pyright",
				"tailwindcss",
				"eslint",
				"rust_analyzer",
				"stylua",
			},
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
}
