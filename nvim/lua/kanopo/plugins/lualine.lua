local M = {}

M = {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "ellisonleao/gruvbox.nvim"
  },
  event = "VeryLazy",
  opts = {
    theme = "gruvbox",
  },
  config = function()
    local lualine_ok, lualine = pcall(require, "lualine")
    local gruvbox_ok, _ = pcall(require, "lualine.themes.gruvbox")

    if not lualine_ok then
      print("Lualine error")
      return
    end

    if not gruvbox_ok then
      print("Gruvbox lualine theme error")
      return
    end

    lualine.setup({opts})

  end,
}

return M
