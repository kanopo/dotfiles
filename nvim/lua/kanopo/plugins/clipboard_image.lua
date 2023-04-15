local M = {}

M = {
  "ekickx/clipboard-image.nvim",
  opts = {
    default = {
      img_dir = "images",
      img_name = function() return os.date('%Y-%m-%d-%H-%M-%S') end, -- Example result: "2021-04-13-10-04-18"
      affix = "<\n  %s\n>"                                           -- Multi lines affix
    },
    -- You can create configuration for ceartain filetype by creating another field (markdown, in this case)
    -- If you're uncertain what to name your field to, you can run `lua print(vim.bo.filetype)`
    -- Missing options from `markdown` field will be replaced by options from `default` field
  }
}

return M
