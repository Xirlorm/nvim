return {
	{
		"echasnovski/mini.statusline",
		version = false,
		config = function()
			require("mini.statusline").setup()
		end
	},
	{
		"echasnovski/mini.tabline",
		event = "VeryLazy",
		version = false,
		config = function()
			require("mini.tabline").setup()
		end
	}
}
