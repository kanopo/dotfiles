-- Leader key for all the keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General settings
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Case INSENSITIVE search uncless using capital
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keep sign column on by default
vim.opt.signcolumn = "yes"


-- reduced update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.termguicolor = true     -- True color support

vim.opt.writebackup = false -- disable backup
vim.opt.updatetime = 300    -- faster completion
vim.opt.undofile = true     -- persistent undo

vim.opt.wrap = false        -- don't wrap lines
vim.opt.conceallevel = 2

-- lang spell cheecking for italian and english
vim.opt.spell = true
vim.opt.spelllang = "en,it"
