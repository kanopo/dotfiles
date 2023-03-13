local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  { import = 'kanopo.plugins.treesitter' },
  { import = 'kanopo.plugins.autopairs' },
  { import = 'kanopo.plugins.lsp' },
  { import = 'kanopo.plugins.cmp' },
  { import = 'kanopo.plugins.telescope' },
  { import = 'kanopo.plugins.gruvbox' },
  { import = 'kanopo.plugins.nvim-tree' },
  { import = 'kanopo.plugins.tmux_navigator' },
  { import = 'kanopo.plugins.which-key' },

  { import = 'kanopo.plugins.lualine' },
  { import = 'kanopo.plugins.neorg' },
  { import = 'kanopo.plugins.multi_comments' },
  { import = 'kanopo.plugins.loading_fidget' },
  { import = 'kanopo.plugins.gitsigns' },
  { import = 'kanopo.plugins.dressing' },
  { import = 'kanopo.plugins.bufferline' },
  { import = 'kanopo.plugins.better_comments' },
  { import = 'kanopo.plugins.alpha' },
})
