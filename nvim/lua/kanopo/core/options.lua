
local opt = vim.opt


vim.g.mapleader = ' '

opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 4
opt.tabstop = 4

-- search

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true


-- splitting
opt.splitbelow = true
opt.splitright = true

-- wrapping
opt.wrap = false
opt.breakindent = true
opt.scrolloff = 10


-- encoding
opt.fileencoding = 'utf-8'


-- numers
opt.relativenumber = true

-- pop up menu completion
opt.completeopt = 'menuone'

-- mouse enbaled in all modes
opt.mouse = 'a'


-- clipboard
opt.clipboard = 'unnamedplus'







