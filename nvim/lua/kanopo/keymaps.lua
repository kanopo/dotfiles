local nmap = function(keys, func, desc)
  vim.api.nvim_set_keymap("n", keys, func, { desc = desc, silent = true })
end

local vmap = function(keys, func, desc)
  vim.api.nvim_set_keymap("v", keys, func, { desc = desc, silent = true })
end

local imap = function(keys, func, desc)
  vim.api.nvim_set_keymap("i", keys, func, { desc = desc, silent = true })
end



local t = require('telescope.builtin')
local ufo = require('ufo')

-- Keymaps for better default experience
nmap("<space>", "<nop>", "Better leader key")
vmap("<space>", "<nop>", "Better leader key")

--nmap("<space>ff", t.find_files, "Find files with telescope")
vim.keymap.set("n", "<leader>ff", t.find_files, {})


-- file explorer
vim.keymap.set("n", "<leader>fe", ":NvimTreeFindFileToggle<CR>", { noremap = true, silent = true })

-- foldings
vim.keymap.set("n", "zo", ufo.openAllFolds, { noremap = true, silent = true })
vim.keymap.set("n", "zc", ufo.closeAllFolds, { noremap = true, silent = true })

-- Move Lines
nmap("<A-j>", ":m .+1<CR>==", "")
vmap("<A-j>", ":m '>+1<CR>gv=gv", "")
imap("<A-j>", "<Esc>:m .+1<CR>==gi", "")
nmap("<A-k>", ":m .-2<CR>==", "")
vmap("<A-k>", ":m '<-2<CR>gv=gv", "")
imap("<A-k>", "<Esc>:m .-2<CR>==gi", "")

-- Paste over currently selected text without yanking it
vmap("p", '"_dP', "")



-- Better indent
vmap("<", "<gv", "")
vmap(">", ">gv", "")



-- resize windows
nmap("<C-Up>", ":resize -2<CR>", "")
nmap("<C-Down>", ":resize +2<CR>", "")
nmap("<C-Left>", ":vertical resize -2<CR>", "")
nmap("<C-Right>", ":vertical resize +2<CR>", "")



-- Better window navigation
nmap("<C-h>", "<C-w>h", {})
nmap("<C-j>", "<C-w>j", {})
nmap("<C-k>", "<C-w>k", {})
nmap("<C-l>", "<C-w>l", {})

-- Navigate buffers
nmap("<S-l>", ":bnext<CR>", {})
nmap("<S-h>", ":bprevious<CR>", {})
