local lsp_servers = {
    "lua_ls",
    -- "ltex",
    "ts_ls",
    -- "gopls",
    "texlab",
    "marksman",
    "clangd",
    "jdtls",
    "docker_compose_language_service",
    "dockerls",
    "tailwindcss",
    "jedi_language_server",
    "cssls"
}

local tools = {
    "luacheck",
    "latexindent",
    "google-java-format"
}

local dap_tools = {}

local on_attach = function(_, bufnr)
    local map = function(key, func, desc)
        vim.keymap.set("n", key, func, { noremap = true, silent = true, desc = desc })
    end

    local telescope = require("telescope.builtin")

    map("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", "[R]ename Symbol")
    map("<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", "[C]ode [A]ction")
    map("K", "<cmd>lua vim.lsp.buf.hover()<CR>", "[K] Hover")
    map("gd", telescope.lsp_definitions, "[G]o [D]efinition")
    map("gr", telescope.lsp_references, "[G]o [R]eferences")
    map("gI", telescope.lsp_implementations, "[G]o [I]mplementations")
end

return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        'nvim-telescope/telescope.nvim',
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "mfussenegger/nvim-dap",
        "jay-babu/mason-nvim-dap.nvim",
        {
            "folke/lazydev.nvim",
            ft = "lua",
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        require("mason").setup()
        require("mason-tool-installer").setup({
            ensure_installed = tools,
            automatic_installation = true
        })
        -- require("mason-nvim-dap").setup({
        --     ensure_installed = dap_tools,
        --     automatic_installation = true,
        --     handlers = {
        --         function(config)
        --             -- defaults
        --             require("mason-nvim-dap").default_setup(config)
        --         end,
        --         -- add here custom handlers when needed
        --     }
        -- })
        require("mason-lspconfig").setup({
            ensure_installed = lsp_servers,
            automatic_installation = true
        })
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        for _, lsp_server in pairs(lsp_servers) do
            require("lspconfig")[lsp_server].setup({
                on_attach = on_attach,
                capabilities = capabilities
            })
        end
    end
}
