-- vim.o.background = "light"
require("kanopo.options")
require("kanopo.autocmds")
require("kanopo.lazy")
require("kanopo.keymaps")

vim.cmd([[ autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

