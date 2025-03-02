return {
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		init = function()
			require('dashboard').setup({
				theme = 'doom',
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
					},
					center = {
						{
							icon = ' ',
							desc = ' Recent Files',
							key = 'r',
							action = 'Telescope oldfiles',
						},
						{
							icon = ' ',
							desc = ' New File',
							key = 'n',
							action = 'ene | startinsert',
						},
						{
							icon = ' ',
							desc = ' Find File',
							key = 'b',
							action = 'Telescop find_files',
						},
						{
							action = "Telescope live_grep",
							desc = " Find Text",
							icon = " ",
							key = "g"
						},
						{
							action = "Lazy",
							desc = " Lazy",
							icon = "󰒲 ",
							key = "l"
						},
						{
							action = "qa",
							desc = " Quit",
							icon = " ",
							key = "q"
						},
					},
				},
				hide = {
					statusline = false,
				},
			})
		end,
		dependencies = {
			{'nvim-tree/nvim-web-devicons'}
		},
	}
}
