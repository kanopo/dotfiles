local M = {}

M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  event = "VeryLazy",
  opts = {
    options = {
      icons_enabled = true,
      theme = 'gruvbox_dark',
    },
  },
}

return M
