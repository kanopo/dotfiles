local keymap = vim.api.nvim_set_keymap

-- keymap('{mode}', '{keymap}', '{mapped to}', '{options}')

keymap('n', '<c-s>', ':w<CR>', {})            -- ctrl + s to save doc
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})      -- ctrl + s in interactive mode to save and continue editing

keymap('n', '<c-q>', ':q<CR>', {})            -- ctrl + s to save doc
keymap('i', '<c-q>', '<Esc>:q<CR>a', {})      -- ctrl + s in interactive mode to save and continue editing

-- keymaps for telescope plugin
keymap('n', '<c-f>', ':Telescope find_files<CR>', {})
