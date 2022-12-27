local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- packer 

  use 'ellisonleao/gruvbox.nvim' -- gruvbox theme

  use 'kyazdani42/nvim-web-devicons' --> enable icons

  use 'nvim-lualine/lualine.nvim' --> a statusline written in luause("nvim-lualine/lualine.nvim") --> a statusline written in lua

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'  
  use 'onsails/lspkind-nvim'

  use 'L3MON4D3/LuaSnip'

  use 'saadparwaiz1/cmp_luasnip'
  
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
