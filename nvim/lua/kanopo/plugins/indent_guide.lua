local M = {}

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"


M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
  --   char = "┊",
  --   show_trailing_blankline_indent = false,
  --   enabled = true,
  --   space_char_blankline = " ",
  --   show_current_context = true,
  --   show_current_context_start = true,
  -- }


  }


}

return M
