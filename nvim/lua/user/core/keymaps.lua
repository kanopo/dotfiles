

vim.g.mapleader = " "


local nmap = function(keys, func, desc)
    vim.keymap.set('n', keys, func, { desc = desc, silent = true })
end

-- clear serch highlights
nmap('<leader>cs', ':nohl<CR>', '[C]lean [S]earch highlight')

nmap('<leader>e', ':NvimTreeToggle<CR>', 'Toggle file [E]xplorer')

-- telescope keymaps
nmap('<leader>ff', ':Telescope find_files<CR>', 'Telescope [F]ind [F]iles')
nmap('<leader>fh', ':Telescope help_tags<CR>', 'Telescope [F]ind [H]elp tags')


-- reload keymap
nmap('<leader>r', ':so %<CR>', '[R]eload nvim configurations')


-- bufferline keymaps
nmap('<leader>w', ':bdelete<CR>', 'Close buffer tab')
nmap('<C-l>', ':BufferLineCycleNext<CR>', 'Go to next buffer tab')
nmap('<C-h>', ':BufferLineCyclePrev<CR>', 'Go to previous buffer tab')
