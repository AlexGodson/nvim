require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd",
		"lua_ls",
		"pylsp",
		"texlab",
	}
})

local lsp = require("lsp-zero").preset({})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "<leader>d", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.rename() end, opts)
end)

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	completion = {
		autocomplete = false
	},
	mapping = {
		-- Navigate between snippet placeholder
		['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
		-- `Enter` key to confirm completion
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<TAB>'] = nil
	}
})
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
vim.keymap.set("i", "<C-x>", '<CMD>:lua require("cmp").complete()<CR>')

lsp.set_preferences({
	suggest_lsp_servers = false,
})

vim.diagnostic.disable()
