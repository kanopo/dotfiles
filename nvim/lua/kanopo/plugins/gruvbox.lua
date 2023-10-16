
local M = {}

M = {
	"ellisonleao/gruvbox.nvim",
	config = function()
		vim.cmd([[colorscheme gruvbox]])
    vim.cmd([[set background=dark]])
	end
}

return M
