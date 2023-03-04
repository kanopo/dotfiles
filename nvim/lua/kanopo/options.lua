local opt = vim.opt

-- Disable default neovim file explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


vim.g.mapleader = " "

-- Tab related indentation
opt.smarttab = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2


-- search (devo usare :nohlsearch per cancellare l'highlight) TODO: aggiungere shorcut
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
-- numbers
opt.relativenumber = true

-- colors
opt.termguicolors = true
-- splitting
-- encoding
opt.fileencoding = "utf-8"

-- clipboard(unique system clipboard)
opt.clipboard = "unnamedplus"

opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
opt.updatetime = 300 -- faster completion (4000ms default)
opt.undofile = true -- enable persistent undofile
opt.cursorline = true -- highlight line current
