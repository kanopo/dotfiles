local opt = vim.opt

-- disable the neovim default file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


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


-- mouse enbaled in all modes
opt.mouse = "a"

-- clipboard
opt.clipboard = "unnamedplus"

-- leave space for icons LSP

opt.signcolumn = "yes"

opt.showtabline = 2

opt.termguicolors = true



opt.backup = false -- creates a backup file
opt.conceallevel = 0 -- so that `` is visible in markdown files



--opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
opt.smartindent = true -- make indenting smarter again
opt.undofile = true -- enable persistent undofile
opt.updatetime = 300 -- faster completion (4000ms default)


opt.scrolloff = 8 -- is one of my fav
opt.sidescrolloff = 8


opt.cursorline = true -- highlight line current

opt.hlsearch = false
