--local nvim_tree_ok, nvim_tree = pcall(require, "nvim-tree")
--if not nvim_tree_ok then
--  print("nvim tree error")
--  return
--end
--
--nvim_tree.setup({
--
--})

return {
  "nvim-tree/nvim-tree.lua",
  cmd = "NvimTreeToggle",
  keys = {
    {"<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file explorer"},
  },
  config = function()
    require("nvim-tree").setup({})
  end,

}
