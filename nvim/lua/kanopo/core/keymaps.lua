

local nmap = function(keys, func, desc)
    vim.keymap.set('n', keys, func, { desc = desc, silent = true })
end





nmap('<leader>e', ':NvimTreeFindFileToggle<CR>', 'Toggle file [E]xplorer')
