return {
	"mistricky/codesnap.nvim",
	-- build = "make build_generator",
	event = "VeryLazy",
	opts = {
		show_line_number = true,
		snapshot_config = {
			code_config = {
				font_family = "ComicShannsMono Nerd Font",
				breadcrumbs = { enable = false },
			},
			watermark = {
				content = "CodeSnap.nvim",
				font_family = "Pacifico",
				color = "#13161e",
			},
			background = {
				start = { x = 0, y = 0 },
				["end"] = { x = "max", y = 0 },
				stops = {
					{ position = 0, color = "#eedef1" },
					{ position = 1, color = "#2bc1d9" },
				},
			},
		},
	},
}
