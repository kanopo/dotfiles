
-- 	{
-- 		"nvim-telescope/telescope.nvim",
-- 		tag = "0.1.1",
-- 		dependencies = {
-- 			"nvim-lua/plenary.nvim",
-- 		},
-- 	},

return {
  "nvim-telescope/telescope.nvim",
  cmd = {"Telescope"},
  keys = {
    {"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope fine files"},
    {"<leader>fb", "<cmd>Telescope git_branches<cr>", desc = "Find git branches"},
  },
  tag = "0.1.1",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  --opts = {},
  --config = function()
  --  require("telescope").setup({opts})
  --end,
}
