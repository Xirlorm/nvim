return {
	"echasnovski/mini.indentscope",
	version = false,
	opts = { header = "Neovim" },
	init = function()
		require("mini.indentscope").setup({ symbol = "▎" })
	end,
}
