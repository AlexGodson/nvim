return require("packer").startup(function(use)
	use "xiyaowong/transparent.nvim"
	use "wbthomason/packer.nvim"

	use "ellisonleao/gruvbox.nvim" 		-- GruvBox.nvim colour scheme
	use "sainnhe/gruvbox-material"		-- GruvBox-Material colour scheme
	use "eddyekofo94/gruvbox-flat.nvim"	-- GruvBox-Flat color scheme
	use "m4xshen/autoclose.nvim"		-- Autoclose parenthesis
	use "fedepujol/move.nvim"		-- move {multiple} lines
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate" -- :MasonUpdate updates registry contents
	}
	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{"neovim/nvim-lspconfig"},		-- Required
			{"williamboman/mason-lspconfig.nvim"},	-- Autocompletion
			{"hrsh7th/nvim-cmp"},     -- Required
			{"hrsh7th/cmp-nvim-lsp"}, -- Required
			{"L3MON4D3/LuaSnip"}      -- Required
		}
	}
	use {
		"nvim-lualine/lualine.nvim",
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	-- For use with python.ipynb files, comment me out and clean packer when done. Dont forget to remove notebook.lua
	use { "meatballs/notebook.nvim" }
	use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }
end)
