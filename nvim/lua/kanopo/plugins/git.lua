M = {}
M = {
  "NeogitOrg/neogit",
  keys = {
    { "<leader>gg", "<cmd>:Neogit<cr>", desc = 'Neogit' },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "nvim-telescope/telescope.nvim", -- optional
    -- "sindrets/diffview.nvim",        -- optional
    -- "ibhagwan/fzf-lua",              -- optional
  },
  config = true
}

return M
