local M = {}

M = {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/nvim-treesitter-context",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "help",
        "lua",
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
        disable = {
          "python",
        },
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<c-space>",
          node_incremental = "<c-space>",
          node_decremental = "<c-s-space>"
        },
      },
      textobjects = {
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["f]"] = "@function.outer",
            ["c]"] = "@class.outer",
          },
          goto_previous_start = {
            ["f["] = "@function.outer",
            ["c["] = "@class.outer",
          },
        },
      },
    })
    require("nvim-treesitter.install").update({
      with_sync = true
    })
  end,
}

return M
