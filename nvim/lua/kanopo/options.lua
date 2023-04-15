
local o = vim.opt
-- Setting leader key
vim.g.mapleader = " "
vim.g.maplocalleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- numbers
o.relativenumber = true

-- unified clipboard
o.clipboard = "unnamedplus"

-- highlight curso line
o.cursorline = true

-- tab indentation
o.tabstop = 2
o.shiftwidth = 2
o.smarttab = true
o.expandtab = true


-- colors 
o.termguicolors = true

o.hlsearch = false
o.incsearch = true

o.mouse = "a"

o.breakindent = true

o.smartcase = true
o.ignorecase = true

o.signcolumn = "yes"


o.updatetime  = 250
o.timeout = true
o.timeoutlen = 300

o.completeopt = 'menuone,noselect'

-- highlight on search
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

o.fileencoding = "utf-8"
o.showmode = false

o.undofile = true

o.backup = false
o.conceallevel = 2
o.pumheight = 10
o.swapfile = false
o.splitbelow = true
o.splitright = true
o.wrap = false


-- spellchecker
-- o.spelllang = "en"
-- o.spell = false


-- foldings
o.foldcolumn  = "1"
o.foldlevel  = 99
o.foldlevelstart  = 99
o.foldenable  = true


o.cmdheight=0
o.colorcolumn="90"
