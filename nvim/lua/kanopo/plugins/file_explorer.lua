local M = {}

M = {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	keys = {
		{ "<leader>fe", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle file viewer" }
	},
	opts = {}
}

return M
