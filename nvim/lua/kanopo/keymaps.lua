

vim.api.nvim_set_keymap("n", "<space>", "<nop>", { noremap = true, silent = true, desc = "" })

-- VISUAL
vim.api.nvim_set_keymap("v", "<space>", "<nop>", { noremap = true, silent = true, desc = "" })
-- Indent
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true, desc = "" })

-- Move row
vim.api.nvim_set_keymap("v", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "" })
vim.api.nvim_set_keymap("v", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "" })

-- vim.api.nvim_set_keymap("v", "p", "_dP", { noremap = true, silent = true, desc = "" })


-- xnoremap <expr> p 'pgv"' . v:register . 'y'
vim.api.nvim_set_keymap("v", "p", "'pgv\"'.v:register.'y'", { noremap = true, silent = true, expr = true, desc = "" })
