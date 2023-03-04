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

local plugins = {
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
			"nvim-lua/plenary.nvim",
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- used to remember keymaps
	{
		"folke/which-key.nvim",
	},

	-- lsp plugins and completion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"jose-elias-alvarez/null-ls.nvim",
			"rafamadriz/friendly-snippets",
			"onsails/lspkind.nvim",
			"L3MON4D3/LuaSnip",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
		},
	},

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
		end,
	},

	{
		"folke/todo-comments.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	},

	{
		"j-hui/fidget.nvim",
		config = function()
			require("fidget").setup()
		end,
	},

	{
		"goolord/alpha-nvim",
	},

	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	{
		"christoomey/vim-tmux-navigator",
	},

	{
		"nvim-tree/nvim-tree.lua",
	},

	{
		"stevearc/dressing.nvim",
	},

	{
		"akinsho/bufferline.nvim",
		config = function()
			require("bufferline").setup({
				options = {
					indicator = {
						icon = "▎",
					},
					modified_icon = "●",
					buffer_close_icon = "",
					close_icon = "",
					left_trunc_marker = "",
					right_trunc_marker = "",
					numbers = "ordinal",
					max_name_length = 15,
					max_prefix_length = 6,
					diagnostics = "nvim_lsp",
					show_buffer_icons = true,
					show_buffer_close_icons = false,
					always_show_bufferline = false,
					show_close_icon = false,
					persist_buffer_sort = true,
					enforce_regular_tabs = true,
					diagnostics_indicator = function(count, level)
						local icon = level:match("error") and "" or ""
						return icon .. count
					end,
				},
			})
		end,
	},
}
local opts = {}
require("lazy").setup(plugins, opts)
