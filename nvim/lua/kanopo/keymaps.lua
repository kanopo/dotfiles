local nmap = function(keys, func, desc)
  vim.api.nvim_set_keymap("n", keys, func, { desc = desc, silent = true })
end

local vmap = function(keys, func, desc)
  vim.api.nvim_set_keymap("v", keys, func, { desc = desc, silent = true })
end

local imap = function(keys, func, desc)
  vim.api.nvim_set_keymap("i", keys, func, { desc = desc, silent = true })
end


nmap("<leader>", "<Nop>", "Better experience")
vmap("<leader>", "<Nop>", "Better experience")

-- TODO:
-- telescope ha un sacco di feature mega fighe, controllare bene che ne vorrei avere qualcuna!!!

nmap("C-h", ":TmuxNavigateLeft<CR>", "Move left in the split View")
nmap("C-j", ":TmuxNavigateDown<CR>", "Move down in the split View")
nmap("C-k", ":TmuxNavigateUp<CR>", "Move up in the split View")
nmap("C-l", ":TmuxNavigateRight<CR>", "Move right in the split View")


-- WARN: AGGIUNGERE DESCRIZIONE ALLE FUNZIONI

-- Resize with arrows
nmap("<C-Up>", ":resize -2<CR>", "")
nmap("<C-Down>", ":resize +2<CR>", "")
nmap("<C-Left>", ":vertical resize -2<CR>", "")
nmap("<C-Right>", ":vertical resize +2<CR>", "")

-- Navigate buffers
nmap("<S-l>", ":bnext<CR>", "")
nmap("<S-h>", ":bprevious<CR>", "")
nmap("<S-w>", ":bdelete<CR>", "Close buffer(tab)")


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

nmap("<leader>l", "<cmd>:Lazy<cr>", "Open Lazy")
