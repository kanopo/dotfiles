
local nmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("n", keys, func, { desc = desc, silent = true })
end

local vmap = function(keys, func, desc)
	vim.api.nvim_set_keymap("v", keys, func, { desc = desc, silent = true })
end

nmap("<leader>", "<Nop>", "Better experience")


