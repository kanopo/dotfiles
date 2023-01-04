local nmap = function(keys, func, desc)
	vim.keymap.set("n", keys, func, { desc = desc, silent = true })
end

nmap("<leader>e", ":NvimTreeFindFileToggle<CR>", "Toggle file [E]xplorer")

nmap("<C-h>", "<C-w>h", "Move left in the split view")
nmap("<C-j>", "<C-w>j", "Move down in the split view")
nmap("<C-k>", "<C-w>k", "Move up in the split view")
nmap("<C-l>", "<C-w>l", "Move right in the split view")

nmap("<C-Left>", ":vertical resize +2<CR>", "Resize to the left")
nmap("<C-Down>", ":resize -2<CR>", "Resize down")
nmap("<C-Up>", ":resize +2<CR>", "Resize up")
nmap("<C-Right>", ":vertical resize -2<CR>", "Resize right")

nmap("<S-h>", ":bprevious<CR>", "Go previous buffer(tab)")
nmap("<S-l>", ":bnext<CR>", "Go nect buffer(tab)")
nmap("<S-w>", ":bdelete<CR>", "Close buffer(tab)")

nmap("<leader>ff", ":Telescope find_files<CR>", "Telescope [F]ind [F]iles")
