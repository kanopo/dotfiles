

local nvim_tree_ok, nvim_tree = pcall(require, 'nvim-tree')

if not nvim_tree_ok then
    print('Nvim tree not loaded')
    return
end

nvim_tree.setup({
    
})
