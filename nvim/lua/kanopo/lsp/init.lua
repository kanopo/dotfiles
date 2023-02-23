local mason_ok, mason = pcall(require, "mason")

if not mason_ok then
  print("Mason error")
  return
end

local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")

if not mason_lspconfig_ok then
  print("Mason lsp config error")
  return
end

local lspconfig_ok, lspconfig = pcall(require, "lspconfig")

if not lspconfig_ok then
  print("Lspconfig error")
  return
end

-- local lspconfig_util_ok, lspconfig_util = pcall(require, 'lspconfig/util')
--
-- if not lspconfig_util_ok then
--   print('Lspconfig util error')
--   return
-- end

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "pyright",
  },
  automatic_installation = true,
})

local on_attach = function(_, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = "LSP: " .. desc
    end

    vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
  end

  nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
  nmap("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

  nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
  nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
  nmap("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
  nmap("<leader>D", vim.lsp.buf.type_definition, "Type [D]efinition")
  nmap("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
  nmap("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")

  -- See `:help K` for why this keymap
  nmap("K", vim.lsp.buf.hover, "Hover Documentation")
  nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")

  -- Lesser used LSP functionality
  nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
  nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
  nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
  nmap("<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, "[W]orkspace [L]ist Folders")

  nmap("<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, "[F]ormat")
end

local lua_settings = require("kanopo.lsp.lua").settings

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  settings = lua_settings,
})

local python_settings = require("kanopo.lsp.python").settings
lspconfig.pyright.setup({
  on_attach = on_attach,
  settings = python_settings,
})

local rust_ok, rust_tools = pcall(require, "rust-tools")

if not rust_ok then
  print("Rust error")
  return
end

rust_tools.setup({
  server = {
    on_attach = on_attach,
  },
})
