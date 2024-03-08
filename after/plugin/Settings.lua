		-- The Most important setting of them all
vim.g.mapleader = " "	-- Sets leader to space

		----------------------
		-- Editor Page View --
		----------------------
vim.wo.number = true		-- Shows Line numbers
vim.wo.relativenumber = true	-- Toggles relative numbering

		------------------------
		-- Tabs configuration --
		------------------------
-- python likes to change things up, I dont, comment this out to reset filetype formats
if filetype == 'python' then
	vim.cmd("let g:python_recommended_style = 0")
end

-- Tab width settings --
vim.bo.shiftwidth = 8		-- 
vim.bo.tabstop = 8		-- 
vim.bo.softtabstop = 8		-- displays 4 spaces as a tab
vim.bo.autoindent = true	-- Auto indents to match previous
	

		------------------------
		-- Clipboard Settings --
		------------------------
vim.cmd("set clipboard+=unnamedplus") 	-- Sets nvim to use the system clipboard

		---------------------
		-- General Keymaps --
		---------------------
vim.keymap.set("n", "<esc>", vim.cmd.noh) 	-- Clears searches from :%s/x/x/gc
vim.keymap.set("n", "<C-d>", "<C-d>zz")		-- Centres cursor moving half page down
vim.keymap.set("n", "<C-u>", "<C-u>zz")		-- Centres cursor moving half page up

-- To be paired with "find"" /<>
vim.keymap.set("n", "n", "nzz")			-- Centres cursor on search next
vim.keymap.set("n", "N", "Nzz")			-- Centres cursor on search prev
vim.keymap.set("n", "<C-T>", ":TransparentToggle<CR>") -- Toggles nvim-transparency

		----------------------
		-- Move Line Config --
		----------------------
vim.wo.scrolloff = 10		-- Cursor remains 'X' lines from the edges
local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)

