return {
	'echasnovski/mini.indentscope',
	version = false,
	config = {
		header = 'Neovim',
	},
	init = function()
		require('mini.indentscope').setup({
			symbol = "▎",
		})
	end
}
