
local M = {}

M = {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"nvim-treesitter/nvim-treesitter-context",
	},
  build = ":TSUpdate",

	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {

			},
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
				disable = {
					"python",
				},
			},
			incremental_selection = {
			        enable = true,
			        keymaps = {
			          init_selection = "<c-space>",
			          node_incremental = "<c-space>",
			          node_decremental = "<c-s-space>"
			        },
			      },

		})
	end
}

return M
