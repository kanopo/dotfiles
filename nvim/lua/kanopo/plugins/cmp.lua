return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        {
            "hrsh7th/cmp-nvim-lsp",
            event = "InsertEnter",
        },
        {
            "hrsh7th/cmp-buffer",
            event = "InsertEnter",
        },
        {
            "hrsh7th/cmp-path",
            event = "InsertEnter",
        },
        {
            "saadparwaiz1/cmp_luasnip",
            event = "InsertEnter",
        },
        {
            "L3MON4D3/LuaSnip",
            event = "InsertEnter",
            dependencies = {
                "rafamadriz/friendly-snippets",
            },
        },
        {
            "onsails/lspkind-nvim",
            event = "InsertEnter",
        },
        {
            "zbirenbaum/copilot.lua",
            cmd = "Copilot",
            event = "InsertEnter",
            config = function()
                require("copilot").setup({
                    suggestion = { enabled = false },
                    panel = { enabled = false },
                })
            end,
        },
        {
            "zbirenbaum/copilot-cmp",
            config = function()
                require("copilot_cmp").setup({
                    event = { "InsertEnter", "LspAttach" },
                    fix_pairs = true,
                })
            end
        }
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        require("luasnip/loaders/from_vscode").lazy_load()
        local lspkind = require("lspkind")

        local check_backspace = function()
            local col = vim.fn.col(".") - 1
            return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
        end

        cmp.setup({
            performance = {
                debounce = 10,
                throttle = 10,
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
                ["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
                ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                ["<C-c>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                ["<C-e>"] = cmp.mapping({
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close(),
                }),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expandable() then
                        luasnip.expand()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif check_backspace() then
                        fallback()
                    else
                        fallback()
                    end
                end, {
                    "i",
                    "s",
                }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, {
                    "i",
                    "s",
                }),
            }),
            formatting = {
                expandable_indicator = true,
                fields = { "kind", "abbr", "menu" },
                format = lspkind.cmp_format({
                    mode = "symbol",
                    maxwidth = 50,
                    ellipsis = "...",
                    show_labelDetails = true,
                    symbol_map = { Copilot = "" }
                }),
            },
            sources = {
                { name = "copilot", group_index = 2 },
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
            },
            confirm_opts = {
                behavior = cmp.ConfirmBehavior.Replace,
                select = false,
            },
        })
    end,
}
