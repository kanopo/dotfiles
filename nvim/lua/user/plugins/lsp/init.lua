local mason_ok, mason = pcall(require, 'mason')

if not mason_ok then
    print('Mason not loaded')
    return
end


local mason_lspconfig_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')

if not mason_lspconfig_ok then
    print('Mason lsp-config not loaded')
    return
end


local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')

if not lspconfig_ok then
    print('Lsp-config not loaded')
    return
end


mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        'sumneko_lua',
        'pyright',
        'ltex'
    }
})



local on_attach = function(_, bufnr)
    local nmap = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { desc = desc, silent = true, buffer = bufnr })
    end
    nmap('gd', vim.lsp.buf.definition, '[G]o [D]efinition')
    nmap('ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
    nmap('gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
end

lspconfig.sumneko_lua.setup({
    on_attach = on_attach
})


lspconfig.pyright.setup({
    on_attach = on_attach
})

lspconfig.ltex.setup({
    on_attach = on_attach
})
