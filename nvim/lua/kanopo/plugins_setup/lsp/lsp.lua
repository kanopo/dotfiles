
local mason_ok, mason = pcall(require, "mason")

if not mason_ok then
  print("mason error")
  return
end

local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")

if not mason_lspconfig_ok then
  print("mason lsp config error")
  return
end

local lspconfig_ok, lspconfig = pcall(require, "lspconfig")

if not lspconfig_ok then
  print("lspconfig error")
  return
end

mason.setup({})
mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
  },
})

lspconfig.lua_ls.setup({})


