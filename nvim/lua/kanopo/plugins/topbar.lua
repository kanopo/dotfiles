local M = {}

M = {
  "akinsho/bufferline.nvim",
  dependencies = {
    "ellisonleao/gruvbox.nvim",
  },
  event = "VeryLazy",
  keys = {
    { "<s-l>", "<cmd>bnext<CR>", desc = "Go next tab" },
    { "<s-h>", "<cmd>bprevious<CR>", desc = "Go previous tab" },
    { "<s-w>", "<cmd>bdelete<CR>", desc = "Close current tab" },
  },
  config = function()
    require("bufferline").setup({
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
        indicator = {
          icon = "▎",
        },
        modified_icon = "●",
        numbers = "ordinal",
        max_name_length = 15,
        max_prefix_length = 6,
        diagnostics = "nvim_lsp",
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        always_show_bufferline = false,
        show_close_icon = false,
        persist_buffer_sort = true,
        enforce_regular_tabs = true,
      },
    })
  end
}

return M
