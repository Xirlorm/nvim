return {
	"uga-rosa/ccc.nvim",
	event = "BufEnter",
	opts = {
		highlighter = {
			auto_enable = true,
		},
	},
	config = function()
		vim.keymap.set("n", "<leader>cp", "<cmd>CccPick<CR>")
	end,
}
