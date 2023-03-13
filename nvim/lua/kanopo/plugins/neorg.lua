return {
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
            personal = "~/Documents/notes/personal",
            university = "~/Documents/notes/university",
            work = "~/Documents/notes/work",
          },
          index = "index.norg", -- The name of the main (root) .norg file
          default_workspace = "personal",
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
    },
    -- logger = {
    --   level = "trace"
    -- }
  },
}
