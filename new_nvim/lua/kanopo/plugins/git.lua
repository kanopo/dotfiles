
local M = {}

M = {
  "f-person/git-blame.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
  },
  config = function ()
    require("gitblame")
    require("gitsigns").setup()
  end
}

return M
