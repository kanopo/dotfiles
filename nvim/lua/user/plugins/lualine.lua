

local lualine_ok, lualine = pcall(require, 'lualine')

if not lualine_ok then
    print('Lualine not loaded')
    return
end

require('lualine').setup({
    theme = 'gruvbox'
})
