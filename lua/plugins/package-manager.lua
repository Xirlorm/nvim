return {
    {
		"williamboman/mason.nvim",
		opts = {},
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
				"gopls",
				"jdtls",
			},
		},
	},
}
