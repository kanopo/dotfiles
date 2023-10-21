local M = {}

M = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        enabled = false,
      },
      suggestions = {
        enabled = false,
        auto_trigger = true,
      },
    })
  end,
}

return M
