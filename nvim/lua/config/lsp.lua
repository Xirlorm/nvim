-- Setup language servers.
local nvim_lsp = require('lspconfig')

local capabilities = require'cmp_nvim_lsp'.default_capabilities()

local servers = {
	'bashls',
	'clangd',
	'cssls',
	'emmet_ls',
	'eslint',
	'html',
	'jsonls',
	'pyright',
	'rust_analyzer',
	'tsserver',
}

for _, server in ipairs(servers) do
	nvim_lsp[server].setup{ capabilities = capabilities }
end

-- Rust analyzer config
local on_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.rust_analyzer.setup({
	on_attach = on_attach,
	settings = {
		['rust-analyzer'] = {
			imports = {
				granularity = { group = 'module' },
				prefix = 'self',
			},
			cargo = { buildScripts = { enable = true }, },
			procMacro = { enable = true },
		}
	},
})
