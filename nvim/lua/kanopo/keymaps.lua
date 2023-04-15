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


-- Keymaps for better default experience
nmap("<space>", "<nop>", "Better leader key")
vmap("<space>", "<nop>", "Better leader key")

-- Remap for dealing with word wrap
-- nmap("k", "v:count == 0 ? 'gk' : 'k'<cr>", "Remap for word wrappign")
-- nmap("k", "v:count == 0 ? 'gj' : 'j'<cr>", "Remap for word wrappign")

nmap("<leader>e", ":NvimTreeFindFileToggle<cr>", "Toggle file explorer")
nmap("<leader>f", ":lua vim.lsp.buf.format()<cr>", "Format file")
nmap("<leader>ff", ":Telescope find_files<cr>", "Telescope find file")

nmap("C-h", ":TmuxNavigateLeft<CR>", "Move left in the split View")
nmap("C-j", ":TmuxNavigateDown<CR>", "Move down in the split View")
nmap("C-k", ":TmuxNavigateUp<CR>", "Move up in the split View")
nmap("C-l", ":TmuxNavigateRight<CR>", "Move right in the split View")

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

nmap("<leader>a", ":lua require('harpoon.mark').add_file()<cr>", "Clear highlights")
nmap("<leader>m", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Clear highlights")

nmap("zo", ":lua require('ufo').openAllFolds()<cr>", "Open all folds")
nmap("zc", ":lua require('ufo').closeAllFolds()<cr>", "Open all folds")

nnmap(':', '<cmd>FineCmdline<CR>', "CMD popup")
