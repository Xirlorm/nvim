return {
	"uga-rosa/ccc.nvim",
	config = function()
		require("ccc").setup({
			highlighter = {
				auto_enable = true,
				lsp = true,
			}
		})
		vim.keymap.set("n", "<leader>cp", "<cmd>CccPick<CR>")
	end,
}
