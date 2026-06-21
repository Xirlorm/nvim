return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")

		notify.setup({
			stages = "fade_in_slide_out",
			timeout = 3000,
			render = "default",
		})

		vim.notify = notify
	end,
}
