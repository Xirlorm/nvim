return {
	"hrsh7th/nvim-cmp",
	event = "VeryLazy",
	dependencies = {
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		-- ########################################
		-- #        Autocompletion setup          #
		-- ########################################
		local luasnip = require("luasnip")
		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
			}, {
				{ name = "buffer" },
			}),
		})

		-- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
		-- Set configuration for specific filetype.
		--[[	cmp.setup.filetype("gitcommit", {
			sources = cmp.config.sources({
				{ name = "git" }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
			}, {
				{ name = "buffer" },
			})
		})
		require("cmp_git").setup() ]]

		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
			matching = { disallow_symbol_nonprefix_matching = false },
		})

		-- Use cmdline & path source for ":" (if you enabled `native_menu`, this won"t work anymore).
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
		})

		-- ########################################
		-- #  Set up lspconfig language servers   #
		-- ########################################
		local lspconfig = vim.lsp.config

		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		local servers = {
			"html",
			"emmet_language_server",
			"cssls",
			"cssmodules_ls",
			"ts_ls",
			"pyright",
			"clangd",
			"tailwindcss",
			"jdtls",
			"gopls",
			"markdownlint",
			"eslint",
			"prettier",
		}

		for _, server in ipairs(servers) do
			lspconfig(server, { capabilities = capabilities })
		end

		local base_on_attach = lspconfig.eslint.on_attach
		lspconfig("eslint", {
			on_attach = function(client, bufnr)
				if not base_on_attach then
					return
				end

				base_on_attach(client, bufnr)
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					command = "LspEslintFixAll",
				})
			end,
		})

		-- Rust analyzer configuration
		lspconfig("rust_analyzer", {
			-- on_attach = on_attach,
			cmd = { "rust-analyzer" },
			settings = {
				["rust-analyzer"] = {
					imports = {
						granularity = { group = "module" },
						prefix = "self",
					},
					cargo = { buildScripts = { enable = true } },
					procMacro = { enable = true },
					-- checkOnSave = { command = "clippy" }
				},
			},
		})
		vim.lsp.enable("rust_analyzer")

		-- Dart lsp configuration
		lspconfig("dartls", {
			capabilities = capabilities,
			cmd = { "/home/sailor/Apps/flutter/bin/dart", "language-server", "--protocol=lsp" },
			filetypes = { "dart" },
			settings = {
				dart = {
					completeFunctionCalls = true,
					showTodos = true,
				},
			},
			init_options = {
				closingLabels = true,
				flutterOutline = true,
				onlyAnalyzeProjectsWithOpenFiles = true,
				outline = true,
				suggestFromUnimportedLibraries = true,
			},
		})

		-- Global mappings.
		-- See `:help vim.diagnostic.*` for documentation on any of the below functions
		vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
		vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

		-- Use LspAttach autocommand to only map the following keys
		-- after the language server attaches to the current buffer
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
				vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
				vim.keymap.set("n", "<space>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, opts)
				vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<space>f", function()
					vim.lsp.buf.format({ async = true })
				end, opts)
			end,
		})
	end,
}
