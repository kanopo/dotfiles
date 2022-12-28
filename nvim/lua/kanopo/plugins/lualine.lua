

local status_ok, lualine = pcall(require, 'lualine')
if not status_ok then
    print('Lualine not loaded')
    return
end

local gruvbox = require'lualine.themes.gruvbox'

lualine.setup({
    options = {
        theme = 'gruvbox'
    }
})



