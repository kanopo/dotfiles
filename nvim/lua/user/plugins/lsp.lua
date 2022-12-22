local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
  return
end

lsp.preset('recommended')

lsp.ensure_installed({
    'sumneko_lua',
    'pyright'
})

lsp.setup()
