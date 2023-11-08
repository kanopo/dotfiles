local M = {}

M = {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = 'BufReadPre',
  dependencies = {
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    { "nvim-treesitter/nvim-treesitter-context", }
  },
  opts = {
    highlight = {
      enable = true,
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
      additional_vim_regex_highlighting = false,
    },
    autopairs = { enable = true },
    autotag = { enable = true },
    indent = { enable = true },
    ensure_installed = "all",
    auto_install = true,
    sync_install = true,
    ignore_install = {}, -- List of parsers to ignore installation
    refactor = {
      highlight_definitions = {
        enable = true,
        -- Set to false if you have an `updatetime` of ~100.
        clear_on_cursor_move = true,
      },
      highlight_current_scope = { enable = false },
    },
    -- incremental_selection = {
    --   enable = true,
    --   keymaps = {
    --     init_selection = "<c-space>",
    --     node_incremental = "<c-space>",
    --     node_decremental = "<c-s-space>",
    --   },
    -- },
    -- textobjects = {
    --   select = {
    --     enable = true,
    --     -- Automatically jump forward to textobj,
    --     lookahead = true,
    --     keymaps = {
    --       ['<c-space>'] = '@function.outer'
    --     }
    --   }
    -- },
  },
  config = function(opts)
    require('nvim-treesitter.configs').setup(opts)
    require("nvim-treesitter.install").update({
      with_sync = true
    })
  end,
}

return M
