	-- Netrw File Explorer
vim.keymap.set("n", "<leader>di", vim.cmd.Ex)	-- Opens Netrw in single window
vim.keymap.set("n", "<leader>sdi", vim.cmd.Sex)	-- Opens Netrw in split horizontal window
vim.keymap.set("n", "<leader>vdi", vim.cmd.Vex)	-- Opens Netrw in split vertical window	

vim.g.netrw_banner = false			-- Toggles the top info banner
vim.g.netrw_liststyle = 3			-- Available options 1-4
vim.g.netrw_browse_split = 0			-- Where the file is opened
vim.g.netrw_winsize = 50			-- Netrw opens on the left {x}% of the screen

	-- Hides specific files using netrw_list_hide=...
local hide_me = '.git'
vim.g.netrw_list_hide = hide_me
vim.g.netrw_hide = 1
