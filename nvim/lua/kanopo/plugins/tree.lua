local M = {}

M = {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    disable_netrw = true,
    view = {
      relativenumber = false,

    },
    filters = {
      dotfiles = false,
      git_clean = false
    },
  },
}

return M
