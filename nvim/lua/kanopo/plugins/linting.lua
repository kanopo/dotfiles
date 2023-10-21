local M = {}

M = {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			python = { "flake8" },
			lua = { "luacheck" },
			typescript = { "eslint_d" },
		}

		local lint_autogroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_autogroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}

return M
