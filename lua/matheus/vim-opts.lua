vim.g.mapleader=" "
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4

vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = 'cp -r'

vim.opt.smartindent=true

vim.keymap.set('n', '<leader>pv', vim.cmd.Explore, {})
vim.keymap.set('n', '<leader>q', ':bp<CR>', {})
vim.keymap.set('n', '<leader>e', ':bn<CR>', {})
