


local mason_status_ok, mason = pcall(require, 'mason')

if not mason_status_ok then
    return
end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')

if not mason_lspconfig_status_ok then
    return
end


local lspconfig_status_ok, lspconfig = pcall(require, 'lspconfig')

if not lspconfig_status_ok then
    return
end

mason.setup()
mason_lspconfig.setup({
    ensure_installed = {
        'sumneko_lua',
        'jedi_language_server',
        'astro',
        'dockerls',
        'ltex',
        'marksman',



    }
})


local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
end

lspconfig.sumneko_lua.setup({
    on_attach = on_attach
})
