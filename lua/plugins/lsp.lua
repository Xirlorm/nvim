return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {"hrsh7th/cmp-nvim-lsp"},
		config = function()
			-- Setup language servers.
			local nvim_lsp = require("lspconfig")

			local capabilities = require"cmp_nvim_lsp".default_capabilities()

			local servers = {
				"clangd",
				"cssls",
				"emmet_ls",
				"eslint",
				"html",
				"pyright",
				"tsserver",
			}

			for _, server in ipairs(servers) do
				nvim_lsp[server].setup({ capabilities = capabilities })
			end

			-- Rust analyzer config
			local on_attach = function(client)
					require"completion".on_attach(client)
			end

			nvim_lsp.rust_analyzer.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					["rust-analyzer"] = {
						imports = {
							granularity = { group = "module" },
							prefix = "self",
						},
						cargo = { buldScripts = { enable = true }, },
						procMacro = { enable = true },
						checkOnSave = { command = "clippy" }
					}
				},
			})

			local signs = { Error = "✖", Warn = "", Hint = " ", Info = "ℹ " } 

			for type, icon in pairs(signs) do
					local hl = "DiagnosticSign" .. type
					vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
			end
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"html",
				"emmet_ls",
				"cssls",
				"eslint",
				"pyright",
				"tsserver",
			},
		},
	},
}
