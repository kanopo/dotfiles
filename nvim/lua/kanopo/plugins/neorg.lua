return {
  "nvim-neorg/neorg",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  build = ":Neorg sync-parsers",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.integrations.treesitter"] = {},
      ["core.norg.concealer"] = {
        config = {
          icon_preset = "varied",
        }
      },
      ["core.norg.dirman"] = {
        config = {
          workspaces = {
            notes = "~/Documents/notes"
          },
          index = "index.norg",
          default_workspace = "notes"
        }
      },
      ['core.itero'] = {},
    },
    ["core.norg.esupports.hop"] = {},
    ["core.norg.esupports.indent"] = {
      config = {
        format_on_enter = true,
        format_on_escape = true,
      }
    },
    ["core.norg.journal"] = {},
    ["core.norg.qol.todo_items"] = {},
    ["core.promo"] = {},
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp",
      }
    },
  },
}
