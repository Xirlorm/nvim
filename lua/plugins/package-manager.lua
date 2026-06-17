return {
	{
		"mason-org/mason.nvim",
		init = function()
			require("mason").setup({
				firewall = {
					enabled = true,
				},
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
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
				"lua_ls",
			},
		},
	},
}
