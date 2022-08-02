

require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'tomasr/molokai'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim' 
  end)


