local nmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("n", keys, func, { desc = desc, silent = true })
end

local vmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("v", keys, func, { desc = desc, silent = true })
end

nmap("<leader>", "<Nop>", "Better experience")
nmap("<leader>e", ":NvimTreeFindFileToggle<CR>", "Toggle file [E]xplorer")

nmap("C-h", ":TmuxNavigateLeft<CR>", "Move left in the split View")
nmap("C-j", ":TmuxNavigateDown<CR>", "Move down in the split View")
nmap("C-k", ":TmuxNavigateUp<CR>", "Move up in the split View")
nmap("C-l", ":TmuxNavigateRight<CR>", "Move right in the split View")

nmap("<S-h>", ":bprevious<CR>", "Go previous buffer(tab)")
nmap("<S-l>", ":bnext<CR>", "Go nect buffer(tab)")
nmap("<S-w>", ":bdelete<CR>", "Close buffer(tab)")

vmap("p", '"_dP')

nmap("<leader>sf", ":Telescope find_files<CR>", "[S]earch [F]iles")
nmap("<leader>sh", ":Telescope help_tags<CR>", "[S]earch [H]elp")
nmap("<leader>sw", ":Telescope grep_string<CR>", "[S]earch current [W]ord")
nmap("<leader>sg", ":Telescope live_grep<CR>", "[S]earch by [G]rep")
nmap("<leader>sd", ":Telescope diagnostics<CR>", "[S]earch [D]iagnostics")
