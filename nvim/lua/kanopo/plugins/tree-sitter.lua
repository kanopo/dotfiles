

local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')

if not status_ok then
    print('Treesitter not loaded')
    return
end

treesitter.setup({
    ensure_installed = {
        'lua',
        'python',
        'markdown',
    },

    auto_install = true,

    highlight = {
        enable = true
    },

    autopairs = {
        enable = true
    }
})
