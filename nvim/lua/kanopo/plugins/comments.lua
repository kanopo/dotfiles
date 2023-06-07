local M = {}

M = {
  "numToStr/Comment.nvim",
  dependencies = {
    "folke/todo-comments.nvim",
  },
  config = function()
    require("Comment").setup({})
    require("todo-comments").setup({})
  end,
}

return M
