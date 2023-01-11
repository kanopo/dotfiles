local fn = vim.fn -- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- theme
	use("ellisonleao/gruvbox.nvim")

	-- LSP related stuff
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")

	-- CMP related stuff
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-buffer")

	-- snippet engine
	use("L3MON4D3/LuaSnip")

	-- snipepts
	use("rafamadriz/friendly-snippets")

	-- api about luasnip engine for cmp
	use("saadparwaiz1/cmp_luasnip")

	-- cute icons
	use("nvim-tree/nvim-web-devicons")
	-- FILE EXPLORER
	use("nvim-tree/nvim-tree.lua")

	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters

	-- DAP for debugging
	use("mfussenegger/nvim-dap")
	-- UI for DAP
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	-- Treesitter
	use({
		-- recommended packer way of installing it is to run this function, copied from documentation
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- Telescope used to fuzzy search files

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- Lualine information / Status bar
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- Auto Pair to generate brackets etc
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- Bufferline is a "header" with all opened buffers
	-- using packer.nvim
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

	-- git status inside the file
	use("lewis6991/gitsigns.nvim")

	-- cool color visualization for different comments type(warning bug todo ecc)
	use("folke/todo-comments.nvim") -- used for better comments todo bug ecc

	-- startup screen
	use("goolord/alpha-nvim")
	-- color preview
	use("uga-rosa/ccc.nvim")
	-- spinnig thing i the bottom right for loadin the lsp
	use("j-hui/fidget.nvim")

	-- keymap to comment out blocks of text
	use("numToStr/Comment.nvim")
	-- used to jump betwean tmux and neovim windows
	use("christoomey/vim-tmux-navigator")

	-- speed up loading on boot
	use("lewis6991/impatient.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
