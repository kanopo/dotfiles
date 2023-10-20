local M = {}

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

local highlight = {
    "CursorColumn",
    "Whitespace",
}

M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = { highlight = highlight, char = "" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
  }


}

return M
