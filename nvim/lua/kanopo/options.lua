-- Leader key for all the keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General settings
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- don't show the mode
vim.opt.showmode = false

-- Case INSENSITIVE search uncless using capital
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keep sign column on by default
vim.opt.signcolumn = "yes"

-- reduced update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.termguicolor = true -- True color support

-- Tabs, indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 4 -- Shift 4 spaces when tab
vim.opt.tabstop = 4 -- 1 tab == 4 spaces
vim.opt.smarttab = true -- Makes tabbing smarter

-- lang spell cheecking for italian and english
vim.opt.spell = true
vim.opt.spelllang = "en,it"

vim.opt.writebackup = false -- disable backup
vim.opt.updatetime = 300 -- faster completion
vim.opt.undofile = true -- persistent undo

-- UI
vim.opt.wrap = false -- don't wrap lines

vim.opt.conceallevel = 2

vim.opt.fileformat = "dos"
