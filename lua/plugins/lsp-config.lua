return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		-- Setup language servers.
		local lspconfig = require("lspconfig")

		local capabilities = require"cmp_nvim_lsp".default_capabilities()
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
		}

		for _, server in ipairs(servers) do
			lspconfig[server].setup({ capabilities = capabilities })
		end

		-- Linter configuration
		lspconfig.eslint.setup({
			on_attach = function(client, bufnr)
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					command = "EslintFixAll",
				})
			end,
		})

		-- Rust analyzer configuration
		-- local on_attach = function(client)
		-- 	require'completion'.on_attach(client)
		-- end

		lspconfig.rust_analyzer.setup({
			-- on_attach = on_attach,
			settings = {
				["rust-analyzer"] = {
					imports = {
						granularity = { group = "module" },
						prefix = "self",
					},
					cargo = { buildScripts = { enable = true }, },
					procMacro = { enable = true },
					checkOnSave = { command = "clippy" }
				}
			},
		})

		-- Dart lsp configuration
		lspconfig.dartls.setup({ 
			capabilities = capabilities,
			cmd = { '/home/sailor/Apps/flutter/bin/dart', 'language-server', '--protocol=lsp' },
			filetypes = { 'dart' },
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
				suggestFromUnimportedLibraries = true
			}
		})

		-- Global mappings.
		-- See `:help vim.diagnostic.*` for documentation on any of the below functions
		vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
		vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
		vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
		vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

		-- Use LspAttach autocommand to only map the following keys
		-- after the language server attaches to the current buffer
		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function(ev)
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf }
				vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
				vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
				vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
				vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
				vim.keymap.set('n', '<space>wl', function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, opts)
				vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
				vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
				vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
				vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
				vim.keymap.set('n', '<space>f', function()
					vim.lsp.buf.format { async = true }
				end, opts)
			end,
		})
	end,
}
