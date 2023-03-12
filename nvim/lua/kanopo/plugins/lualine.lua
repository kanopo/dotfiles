--
--local lualine_ok, lualine = pcall(require, "lualine")
--if not lualine_ok then
--	print("ERROR lualine")
--	return
--end
--
--local _ = require("lualine.themes.gruvbox")
--
--lualine.setup({
--	options = {
--		theme = "gruvbox",
--	},
--})


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
