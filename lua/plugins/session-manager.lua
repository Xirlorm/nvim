return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			auto_restore_enabled = false,
			auto_save_enabled = true,
		})
	end,
	event = "VeryLazy",
}
