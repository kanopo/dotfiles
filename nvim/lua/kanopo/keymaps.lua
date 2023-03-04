
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

