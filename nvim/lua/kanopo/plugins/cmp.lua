local M = {}

M = {
  "hrsh7th/nvim-cmp",
  dependencies = {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',

    -- Adds LSP completion capabilities
    'hrsh7th/cmp-nvim-lsp',

    -- Adds a number of user-friendly snippets
    'rafamadriz/friendly-snippets',

    -- COPILOT
    "zbirenbaum/copilot.lua",
    "zbirenbaum/copilot-cmp",

    -- auto pairs
    "windwp/nvim-autopairs",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local copilot = require("copilot")
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    copilot.setup({})


    -- copilot setup
    require("copilot_cmp").setup({
      suggestion = {
        enabled = false,
      },

      panel = {
        enabled = false
      },
    })

    require("luasnip.loaders.from_vscode").lazy_load()

    luasnip.config.setup({})
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },
      mapping = {
        ['<C-Space>'] = cmp.mapping.complete({}),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' }),
        -- exit suggestions
        ["<C-c>"] = cmp.mapping({
          i = cmp.mapping.abort(),
          c = cmp.mapping.close(),
        }),

      },
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "copilot" },
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })
  end
}

return M
