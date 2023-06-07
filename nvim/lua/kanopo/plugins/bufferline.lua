local M = {}

M = {
  "akinsho/bufferline.nvim",
  dependencies = {
    "ellisonleao/gruvbox.nvim",
  },
  event = "VeryLazy",
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
