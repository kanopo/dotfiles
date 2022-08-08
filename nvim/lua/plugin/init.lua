local fn = vim.fn

return require('packer').startup(function(use)
  use "nvim-treesitter/nvim-treesitter" -- used for highlight
  use "nvim-lua/plenary.nvim" --dependecy for telescope fuzzy finder
  use "nvim-telescope/telescope.nvim"
  use "NvChad/nvim-colorizer.lua"   --simple highight
  use "f-person/git-blame.nvim" --git status
  if packer_bootstrap then
    require('packer').sync()
  end
end)
