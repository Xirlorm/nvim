return {
	"echasnovski/mini.comment",
	even = "VeryLazy",
	config = function()
		require("mini.comment").setup({
			options = {
				ignore_blank_line = true,
			}
		})
	end
}
