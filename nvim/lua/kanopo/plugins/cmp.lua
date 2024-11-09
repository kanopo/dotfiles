return {
    "hrsh7th/nvim-cmp",
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
        -- BUG: removed copilot because make me a worst developer :(
        {
            "zbirenbaum/copilot-cmp",
            event = "InsertEnter",
            dependencies = {
                {
                    "zbirenbaum/copilot.lua",
                    event = "InsertEnter",
                },
            },
        },
        {
            "onsails/lspkind-nvim",
            event = "InsertEnter",
        },
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        require("luasnip/loaders/from_vscode").lazy_load()
        local lspkind = require("lspkind")

        require("copilot").setup({
            suggestion = { enabled = false },
            panel = { enabled = false },
        })

        require("copilot_cmp").setup()

        local check_backspace = function()
            local col = vim.fn.col(".") - 1
            return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
        end

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
                ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
                ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
                ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
                ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                ["<C-c>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                ["<C-e>"] = cmp.mapping({
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close(),
                }),
                -- Accept currently selected item. If none selected, `select` first item.
                -- Set `select` to `false` to only confirm explicitly selected items.
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
                }),
            },
            sources = {
                { name = "copilot" },
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
            },
            confirm_opts = {
                behavior = cmp.ConfirmBehavior.Replace,
                select = false,
            },
            window = {
                completion = {
                    border = "rounded",
                    winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,FloatBorder:FloatBorder,Search:None",
                    col_offset = -3,
                    side_padding = 1,
                    scrollbar = false,
                    scrolloff = 8,
                },
                documentation = {
                    border = "rounded",
                    winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,Search:None",
                },
            },
            -- experimental = {
            --     ghost_text = false,
            -- },
        })
    end,
}
