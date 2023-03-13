return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "kyazdani42/nvim-web-devicons",
  },
  event = "VeryLazy",
  config = function()
    local lualine = require("lualine")
    require("lualine.themes.gruvbox")
    lualine.setup({
      theme = "gruvbox",
    })
  end,
}
