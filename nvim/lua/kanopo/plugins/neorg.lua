local M = {}

M = {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-lua/popup.nvim",
  },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {
          config = {
            icon_preset = "varied"
          }
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              me = "~/Documents/notes/me",
              work = "~/Documents/notes/work",
              uni = "~/Documents/notes/uni",
            },
            default_workspace = "me",
          }
        },
        ["core.esupports.indent"] = {},
        ["core.esupports.metagen"] = {},
        ["core.journal"] = {},
        ["core.keybinds"] = {},
      },
    })
  end
}

return M
