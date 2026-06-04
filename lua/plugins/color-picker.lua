return {
	"uga-rosa/ccc.nvim",
	config = function()
		local ccc = require("ccc")

		ccc.setup({
			highlighter = {
				auto_enable = true,
			},
		})

		vim.keymap.set("n", "<leader>cp", "<cmd>CccPick<CR>")
	end,
	event = "VeryLazy",
}
