local M = {}

M = {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        latex = { "latexindent" },
        lua = { "stylua" },
        typescript = { "prettier" },
        python = { "black" },
      },

      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    })
  end
}

return M
