vim.keymap.set('n', '<leader>pv', vim.cmd.Explore, {})
vim.keymap.set('n', '<leader>q', ':bp<CR>', {})
vim.keymap.set('n', '<leader>e', ':bn<CR>', {})

-- Clear search highlight when ESC is pressed on normal mode.
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
