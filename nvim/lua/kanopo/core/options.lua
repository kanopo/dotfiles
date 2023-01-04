local opt = vim.opt

vim.g.mapleader = " "

opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 2
opt.tabstop = 2

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

-- encoding
opt.fileencoding = "utf-8"

-- numers
opt.relativenumber = true

-- pop up menu completion
opt.completeopt = "menuone"

-- mouse enbaled in all modes
opt.mouse = "a"

-- clipboard
opt.clipboard = "unnamedplus"

-- leave space for icons LSP

opt.signcolumn = "yes"

opt.showtabline = 2

-- from neovim from scratch by lunar vim

opt.backup = false -- creates a backup file
opt.conceallevel = 0 -- so that `` is visible in markdown files

opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
opt.smartindent = true -- make indenting smarter again
opt.undofile = true -- enable persistent undofile
opt.updatetime = 300 -- faster completion (4000ms default)

opt.scrolloff = 8 -- is one of my fav
opt.sidescrolloff = 8
