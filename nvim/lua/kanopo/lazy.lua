
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

plugins = {
  -- Theme
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme gruvbox]])
		end,
	},

  -- Bar at hte bottom of the screen
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
}
opts = {}
require("lazy").setup(plugins, otps)
