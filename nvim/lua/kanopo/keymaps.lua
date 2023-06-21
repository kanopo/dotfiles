-- vim.api.nvim_set_keymap()

-- NORMAL
-- Better navigation
vim.api.nvim_set_keymap("n", "<space>", "<nop>", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "" })


-- Telescope
local t = require("telescope.builtin")

-- vim.api.nvim_set_keymap("n", "<leader>ff", t.find_files, {})
vim.keymap.set("n", "<leader>ff", t.find_files, { desc = "[F]ind [F]iles" })
vim.keymap.set("n", "<leader>lg", t.live_grep, { desc = "[L]ive [G]rep" })
vim.keymap.set("n", "<leader>fb", t.buffers, { desc = "[F]ind [B]uffers" })

-- UFO
local ufo = require("ufo")
vim.keymap.set("n", "zo", ufo.openAllFolds, { noremap = true, silent = true })
vim.keymap.set("n", "zc", ufo.closeAllFolds, { noremap = true, silent = true })

-- Bufferline navigation
vim.api.nvim_set_keymap("n", "<s-h>", ":bnext<CR>", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("n", "<s-l>", ":bprevious<CR>", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("n", "<s-w>", ":bdelete<CR>", { noremap = true, silent = true, desc = "" })


-- nvim-tree
vim.api.nvim_set_keymap("n", "<leader>fe", ":NvimTreeFindFileToggle<CR>", { noremap = true, silent = true, desc = "" })


-- VISUAL
vim.api.nvim_set_keymap("v", "<space>", "<nop>", { noremap = true, silent = true, desc = "" })
-- Indent
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true, desc = "" })

-- Move row
vim.api.nvim_set_keymap("v", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("v", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "" })

-- paste without copy highlighted text
-- vim.api.nvim_set_keymap("v", "p", "_dP", { noremap = true, silent = true, desc = "" })
