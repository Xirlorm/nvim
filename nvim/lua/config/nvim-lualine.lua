require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'edge',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000
    },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
			{'branch'},
			{'diff'},
			{'diagnostics',
				sources = {'ale'},
				sections = { 'error', 'warn', 'info', 'hint' },

				symbols = {error = '✖:', warn = ':', info = 'ℹ:', hint = 'h'},
				-- colored = true,
				update_in_insert = false,
			}
		},
    lualine_c = {'selectioncount'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
	winbar = {},
	tabline = {
		lualine_a = {
			{'buffers',
				symbols = {
					modified = ' •',
					alternate_file = '-',
					directory =  ''
				},
				show_filename_only = true,
				hide_filename_extension = false,
				icons_enabled = true,
				component_separators = {left = '', right = ''},
				section_separators = {left = '', right = ''},
			}
		},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {'tabs'},
	},
	inactive_winbar = {},
  extensions = {}
}

require('lualine').hide {
	place = {'winbar'},
	unhide = false,
}
