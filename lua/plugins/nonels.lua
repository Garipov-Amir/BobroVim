return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.ocamlformat,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.revive,
				null_ls.builtins.formatting.shellharden,
				null_ls.builtins.diagnostics.trivy,
				null_ls.builtins.formatting.biome,
				null_ls.builtins.diagnostics.checkstyle,
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})    
	end,
}
