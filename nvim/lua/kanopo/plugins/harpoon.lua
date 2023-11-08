local M = {}

M = {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    -- { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = 'FZF Find Files' },
    {  "<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = 'Harpoon Menu' },
    { "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark File"}
  },
}

return M
