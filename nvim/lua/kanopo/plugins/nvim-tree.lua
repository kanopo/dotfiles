

local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
    print('Nvim tree not loaded')
    return
end

nvim_tree.setup()
