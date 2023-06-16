
local M = {}

M = {
  "NvChad/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup()
  end,
}

return M
