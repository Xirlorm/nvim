return {
	"echasnovski/mini.files",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	version = false,
	event = "VeryLazy",
	config = function()
		require("mini.files").setup()
		vim.cmd([[command! MiniTree lua MiniFiles.open()]])
	end
}
