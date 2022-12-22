

local telescope_ok, telescope = pcall(require, 'telescope')

if not telescope_ok then
    print('Telescope not loaded')
    return
end


local actions_ok, actions = pcall(require, 'telescope.actions')

if not actions_ok then
    print('Telescope acctions not loaded')
    return
end

telescope.setup({

})

telescope.load_extension('fzf')
