
local nmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("n", keys, func, { desc = desc, silent = true })
end

local vmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("v", keys, func, { desc = desc, silent = true })
end

nmap("<leader>", "<Nop>", "Better experience")

-- TODO:
-- telescope ha un sacco di feature mega fighe, controllare bene che ne vorrei avere qualcuna!!!
nmap("<leader>ff", ":Telescope find_files<CR>", "[F]ind [F]iles")
nmap("<leader>ht", ":Telescope help_tags<CR>", "[H]elp [T]ags")
nmap("<leader>gb", ":Telescope git_branches<CR>", "[G]it [B]ranches")

nmap("C-h", ":TmuxNavigateLeft<CR>", "Move left in the split View")
nmap("C-j", ":TmuxNavigateDown<CR>", "Move down in the split View")
nmap("C-k", ":TmuxNavigateUp<CR>", "Move up in the split View")
nmap("C-l", ":TmuxNavigateRight<CR>", "Move right in the split View")

nmap("<leader>e", ":NvimTreeToggle<CR>", "Toggle file explorer")
