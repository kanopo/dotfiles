

local M = {}

M = {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {
          config = {
            icon_preset = "basic",
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              kanopo = "~/Documents/notes/kanopo",
            },
            index = "index.norg",
            default_workspace = "kanopo",
          },
        },
      },
    }
  end,
}

return M
