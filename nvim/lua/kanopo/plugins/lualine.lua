return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "kyazdani42/nvim-web-devicons",
  },
  event = "VeryLazy",
  opts = {
    theme = "gruvbox",
  },
  config = function()
    local lualine = require("lualine")
    require("lualine.themes.gruvbox")
    lualine.setup({ opts })
  end,
}
