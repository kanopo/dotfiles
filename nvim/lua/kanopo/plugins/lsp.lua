local servers = {
    "lua_ls",
    -- "jedi_language_server",
    -- "ltex",
    -- "tsserver",
    "ts_ls",
    "tailwindcss",
    "marksman",
    "html",
    "docker_compose_language_service",
    "dockerls",
    "jdtls",
    "cssls",
    "sqlls",
    "lemminx",
    "rust_analyzer",
}
local tools = {
    -- "luacheck",
    "stylua",
    -- "flake8",
    -- "black",
    -- "latexindent",
    "eslint_d",
    "google-java-format",
    "sql-formatter",
}

return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "folke/neodev.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })
        require("mason-tool-installer").setup({
            ensure_installed = tools,
        })
        require("mason-lspconfig").setup({
            ensure_installed = servers,
            automatic_installation = true,
        })

        -- require("neodev").setup({})

        local function on_attach(_, bufnr)
            local map = function(keys, func, desc)
                vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
            end

            local telescope_builtin = require("telescope.builtin")

            map("<leader>rn", vim.lsp.buf.rename, "[R]e[N]ame")
            map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

            map("gd", telescope_builtin.lsp_definitions, "[G]oto [D]efinition")
            map("gr", telescope_builtin.lsp_references, "[G]oto [R]eferences")
            map("gI", telescope_builtin.lsp_implementations, "[G]oto [I]mplementations")
            map("K", vim.lsp.buf.hover, "Hover")
            map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

            -- Create a command `:Format` local to the LSP buffer
            vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
                vim.lsp.buf.format()
            end, { desc = "Format current buffer with LSP" })
        end
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

        for _, server in pairs(servers) do
            if server == "lua_ls" then
                require("lspconfig")[server].setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                    -- settings = {
                    --     Lua = {
                    --         diagnostics = {
                    --             globals = { "vim" },
                    --         },
                    --         runtime = {
                    --             version = "LuaJIT",
                    --         },
                    --         -- workspace = {
                    --         --     checkThirdParty = false,
                    --         --     library = {
                    --         --         "${3rd}/luv/library",
                    --         --         unpack(vim.api.nvim_get_runtime_file("", true)),
                    --         --     },
                    --         -- },
                    --     },
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" },
                            },
                        },
                    },
                })
                -- elseif server == "pyright" then
                --     require("lspconfig")[server].setup({
                --         on_attach = on_attach,
                --         capabilities = capabilities,
                --         settings = {
                --             -- ltex = {
                --             --     enabled = true,
                --             --     formatter = "latexindent",
                --             --     formatter_options = {
                --             --         indent = 2,
                --             --     },
                --             --     language = "en, it",
                --             -- },
                --             -- lspconfig.pyright.setup({
                --             --     on_attach = on_attach,
                --             --     settings = {
                --             --         pyright = { autoImportCompletion = true },
                --             --         python = {
                --             --             analysis = {
                --             --                 autoSearchPaths = true,
                --             --                 diagnosticMode = "openFilesOnly",
                --             --                 useLibraryCodeForTypes = true,
                --             --                 typeCheckingMode = "off",
                --             --             },
                --             --         },
                --             --     },
                --             -- }),
                --
                --             pyright = {
                --                 autoImportCompletion = true,
                --             },
                --             python = {
                --                 analysis = {
                --                     autoSearchPaths = true,
                --                     diagnosticMode = "openFilesOnly",
                --                     useLibraryCodeForTypes = true,
                --                     typeCheckingMode = false,
                --                 },
                --             },
                --         },
                --     })
                -- elseif server == "ltex" then
                --     require("lspconfig")[server].setup({
                --         on_attach = on_attach,
                --         capabilities = capabilities,
                --         settings = {
                --             ltex = {
                --                 enabled = true,
                --                 formatter = "latexindent",
                --                 formatter_options = {
                --                     indent = 2,
                --                 },
                --                 language = "en, it",
                --             },
                --         },
                --     })
                -- elseif server == "clangd" then
                --     require("lspconfig")[server].setup({
                --         on_attach = on_attach,
                --         capabilities = capabilities,
                --         cmd = { "clangd", "--background-index", "--offset-encoding=utf-16" },
                --     })
            else
                require("lspconfig")[server].setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                })
            end
        end
    end,
}
