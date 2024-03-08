-- autoclose.nvim
require("autoclose").setup({
	keys = {
		["("] = { escape = false, close = true, pair = "()"},
		["["] = { escape = false, close = true, pair = "[]"},
		["{"] = { escape = false, close = true, pair = "{}"},
		-- ["<"] = { escape = false, close = true, pair = "<>"}, 	-- Kinda funky when doing equality operations
		-- ["/*"] = { escape = false, close = true, pair = "/**/"}, 	-- Don't like how this treats foreward slashed when typing

		-- [">"] = { escape = true, close = false, pair = "<>"}, 	-- Kinda funky when doing equality operations
		[")"] = { escape = true, close = false, pair = "()"},
		["]"] = { escape = true, close = false, pair = "[]"},
		["}"] = { escape = true, close = false, pair = "{}"},

		['"'] = { escape = true, close = true, pair = '""'},
		["'"] = { escape = true, close = true, pair = "''"},
		["`"] = { escape = true, close = true, pair = "``"},
	},
	options = {
		disabled_filetypes = { "text" },
		disable_when_touch = true,
		pair_spaces = true,
      		auto_indent = true,
	},
})
