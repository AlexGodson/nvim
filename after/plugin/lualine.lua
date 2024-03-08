-- Status bar at the botton of the page
require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff'},
		lualine_c = {'filename'},
		lualine_x = {'filetype'},
		lualine_y = {'progress', 'selectioncount'},
		lualine_z = {'location'}
	}
}
