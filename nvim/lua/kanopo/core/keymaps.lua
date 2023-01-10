local nmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("n", keys, func, { desc = desc, silent = true })
end

local vmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("v", keys, func, { desc = desc, silent = true })
end



nmap("<leader>", "<Nop>", "Better experience")
nmap("<leader>e", ":NvimTreeFindFileToggle<CR>", "Toggle file [E]xplorer")

-- nmap("<C-h>", "<C-w>h", "Move left in the split view")
-- nmap("<C-j>", "<C-w>j", "Move down in the split view")
-- nmap("<C-k>", "<C-w>k", "Move up in the split view")
-- nmap("<C-l>", "<C-w>l", "Move right in the split view")

nmap("C-h", ":TmuxNavigateLeft<CR>", "Move left in the split View")
nmap("C-j", ":TmuxNavigateDown<CR>", "Move down in the split View")
nmap("C-k", ":TmuxNavigateUp<CR>", "Move up in the split View")
nmap("C-l", ":TmuxNavigateRight<CR>", "Move right in the split View")

nmap("<S-Up>", "<cmd>resize +2<CR>")
nmap("<S-Down>", "<cmd>resize -2<CR>")
nmap("<S-Left>", "<cmd>vertical resize -2<CR>")
nmap("<S-Right>", "<cmd>vertical resize +2<CR>")

nmap("<S-h>", ":bprevious<CR>", "Go previous buffer(tab)")
nmap("<S-l>", ":bnext<CR>", "Go nect buffer(tab)")
nmap("<S-w>", ":bdelete<CR>", "Close buffer(tab)")

vmap("p", '"_dP')

nmap("<leader>ff", ":Telescope find_files<CR>", "Telescope [F]ind [F]iles")

