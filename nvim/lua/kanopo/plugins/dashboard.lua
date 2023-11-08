local M = {}
M = {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
      theme = 'hyper',
      shortcut_type = 'number',
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        },
      },
    })
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}

return M
