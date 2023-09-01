require('config.options');
require('config.lazy');
require('plugins.catppuccin')
require('plugins.treesitter')
require('plugins.lspconfig')
require('plugins.sonokai')
require('plugins.lualine')
require('plugins.nvim-cmp')
require("plugins.bufferline")
require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {
		'html' , 'emmet_ls',  'cssls', 'eslint', 'pyright', 'tsserver',
	},
})
require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
}

vim.g.rustfmt_autosave = 1 -- On save, format rust code

-- Check and enable termguicolors
if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end

-- Turn on syntax highlighting
vim.cmd.syntax('on')
-- Set colorscheme
vim.cmd.colorscheme('catppuccin-frappe')
