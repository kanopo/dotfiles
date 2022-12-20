-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to space
vim.g.mapleader = ' '


-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-- Nvim tree
map('n', '<leader>e', ':NvimTreeToggle<CR>')

-- telescope keymaps
map('n', '<leader>ff', ':Telescope find_files<CR>')


-- bufferline keymaps
map('n', '<leader>w', ':bdelete<CR>')
map('n', '<C-l>', ':BufferLineCycleNext<CR>')
map('n', '<C-h>', ':BufferLineCyclePrev<CR>')

-- toggle term keymaps
map('n', '<leader>t', ':ToggleTerm<CR>')
