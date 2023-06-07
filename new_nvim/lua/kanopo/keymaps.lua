
local nmap = function(keys, func, desc)
  vim.api.nvim_set_keymap("n", keys, func, { desc = desc, silent = true })
end

local nnmap = function(keys, func, desc)
  vim.api.nvim_set_keymap("n", keys, func, { desc = desc, silent = true, noremap = true })
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
