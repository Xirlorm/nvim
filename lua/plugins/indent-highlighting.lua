return {
	"echasnovski/mini.indentscope",
	version = "*",
	opts = { header = "Neovim" },
	init = function()
		require("mini.indentscope").setup({ symbol = "▎" })
	end,
}
