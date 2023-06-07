-- Global options
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable builtin plugins
vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1


-- relative line numbers
vim.opt.relativenumber = true

-- unified clipboard
vim.opt.clipboard = 'unnamedplus'

-- indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.wrap = false


-- colors
vim.opt.termguicolors = true


-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})


-- signs
vim.opt.signcolumn = 'yes'

-- speed up
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.timeout = true


-- undo
vim.opt.undofile       = true
vim.opt.backup         = false
vim.opt.swapfile       = false

-- foldings
vim.opt.foldcolumn     = "1"
vim.opt.foldlevel      = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable     = true




-- rendering
vim.opt.conceallevel = 2


-- cmd height
vim.opt.cmdheight = 0


-- completion
vim.o.completeopt = 'menuone,noselect'
