return {
	"mason-org/mason.nvim",
	config = function()
		require("mason").setup({
			firewall = {
				enabled = true,
			},
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
	end,
}
