local M = {}



local servers = {
  lua_ls = {},
}


local on_attach = function(_, _)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
  vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
  vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})
  vim.keymap.set("n", "<leader>H", vim.lsp.buf.signature_help, {})
  -- vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, {})
  -- vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, {})

  vim.keymap.set("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols, {})
end

M = {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'hrsh7th/cmp-nvim-lsp',
    "folke/neodev.nvim",
    "j-hui/fidget.nvim",

  },
  config = function()
    -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local lspconfig = require("lspconfig")

    require('fidget').setup()

    mason.setup({})

    require('neodev').setup()

    mason_lspconfig.setup({
      ensure_installed = vim.tbl_keys(servers),
      automatic_installation = true
    })

    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
          settings = servers[server_name],
          on_attach = on_attach
        })
      end
    })
  end
}

return M
