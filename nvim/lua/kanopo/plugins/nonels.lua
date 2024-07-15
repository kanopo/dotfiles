return {
	"jose-elias-alvarez/null-ls.nvim",
	event = "BufReadPre",
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		null_ls.setup({
			sources = {
				-- lua
				formatting.stylua,
				diagnostics.luacheck,

				-- python
				formatting.black,
				diagnostics.flake8,

				-- latex
				formatting.latexindent,

				-- javascript / typescript
				diagnostics.eslint_d,
			},
		})
	end,
}
