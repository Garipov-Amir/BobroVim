return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- [[ CONFIG TREESITTER ]]
		local treeCfg = require("nvim-treesitter.configs")
		treeCfg.setup({
			ensure_installed = {
				"bash",
				"c",
				"css",
				"go",
				"gomod",
				"gosum",
				"haskell",
				"html",
				"java",
				"json",
				"latex",
				"llvm",
				"lua",
				"luadoc",
				"markdown",
				"ocaml",
				"odin",
				"vim",
				"vimdoc",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
