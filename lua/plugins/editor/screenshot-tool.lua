return {
	"mistricky/codesnap.nvim",
	-- build = "make build_generator",
	opts = {
		theme = "candy",
		show_line_number = true,
		snapshot_config = {
			code_config = {
				font_family = "ComicShannsMono Nerd Font",
				breadcrumbs = {
					enable = false,
				},
			},
			watermark = {
				content = "CodeSnap.nvim",
				font_family = "Pacifico",
				color = "#323232",
			},
			background = {
				start = {
					x = 0,
					y = 0,
				},
				["end"] = {
					x = "max",
					y = 0,
				},
				stops = {
					{
						position = 0,
						color = "#ffffff",
					},
					{
						position = 1,
						color = "#caf4c2",
					},
				},
			},
		},
	},
}
