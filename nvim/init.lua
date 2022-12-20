-- Inizialize packer
require("kanopo.packer")
-- Setup plugins
require("kanopo.plugins.impatient")
require("kanopo.plugins.colorscheme")
require("kanopo.plugins.statusline")
require("kanopo.plugins.nvim-tree")
require("kanopo.plugins.nvim-treesitter")
require("kanopo.plugins.alpha-nvim")
require("kanopo.plugins.cmp")
require("kanopo.plugins.lsp")
require("kanopo.plugins.telescope")
require("kanopo.plugins.gitsigns")
require("kanopo.plugins.bufferline")
require("kanopo.plugins.toggleterm")
-- Setup nvim options and keymaps
require("kanopo.core.options")
require("kanopo.core.keymaps")

