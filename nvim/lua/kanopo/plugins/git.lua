local M = {}

M = {
  "TimUntersberger/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = "Neogit",
  opts = {}
}

return M

-- local M = {}
--
-- M = {
--   "lewis6991/gitsigns.nvim",
--   event = { "BufReadPre", "BufNewFile" },
--   config = true,
-- }
--
-- return M
