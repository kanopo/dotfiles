
local nvim_tree_ok, nvim_tree = pcall(require, "nvim-tree")
if not nvim_tree_ok then
  print("nvim tree error")
  return
end

nvim_tree.setup({

})
