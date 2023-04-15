local M = {}

M = {
  'nvim-neorg/neorg',
  build = ":Neorg sync-parsers",
  ft = 'norg',
  cmd = 'Neorg',
  priority = 30,
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.itero"] = {},
      ["core.norg.esupports.hop"] = {},
      ["core.norg.esupports.indent"] = {},
      ["core.norg.esupports.metagen"] = {},
      ["core.norg.journal"] = {},
      ["core.norg.qol.toc"] = {},
      ["core.norg.qol.todo_items"] = {},
      ["core.promo"] = {},
      ["core.norg.dirman"] = {
        config = {
          workspaces = {
            kanopo = "~/Documents/notes/kanopo",
            enigma = "~/Documents/notes/enigma",
            sf = "~/Documents/notes/soluzionifutura",
          },
          index = "index.norg", -- The name of the main (root) .norg file
          default_workspace = "kanopo",
        }
      },
      ["core.norg.concealer"] = {
        config = {
          icon_preset = "basic",
        },
      },
      ["core.norg.completion"] = {
        config = {
          engine = "nvim-cmp",
        }
      },
      ["core.integrations.treesitter"] = {},
      ["core.export"] = {},
    },
    -- logger = {
    --   level = "trace"
    -- }
  },
}

return M
