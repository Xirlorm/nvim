return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		init = function()
			require("dashboard").setup({
				theme = "doom",
				config = {
					header = {
						"",
						"███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗",
						"████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║",
						"██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║",
						"██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║",
						"██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║",
						"╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
						"",
						"",
					},
					center = {
						{
							icon = "󰈔 ",
							desc = " New File",
							key = "n",
							action = "ene | startinsert",
						},
						{
							icon = "󰑐 ",
							desc = " Recent Files",
							key = "r",
							action = "Telescope oldfiles",
						},
						{
							icon = "󰋚 ",
							desc = " Restore Session",
							key = "u",
							action = "AutoSession restore",
						},
						{
							icon = "󰱼 ",
							desc = " Find File",
							key = "f",
							action = "Telescope find_files",
						},
						{
							icon = "󱎸 ",
							desc = " Find Text",
							key = "t",
							action = "Telescope live_grep",
						},
						{
							-- icon = "󰒲 ",
							icon = "󰐱 ",
							desc = " Manage Extensions",
							key = "e",
							action = "Lazy",
						},
						{
							icon = "󱌣 ",
							desc = " Manage Tooling",
							key = "m",
							action = "Mason",
						},
						{
							icon = "󰒓 ",
							desc = " Settings",
							key = "s",
							action = "lua require('nvim-tree.api').tree.open(vim.fn.stdpath('config'))",
						},
						{
							icon = " ",
							desc = " Quit / Exit",
							key = "q",
							action = "qa",
						},
					},
					vertical_center = true,
				},
			})
		end,
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
	},
}
