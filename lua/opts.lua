vim.wo.relativenumber=true
vim.wo.number=true
vim.g.poetv_auto_activate = 1

vim.wo.foldmethod='expr'
vim.wo.foldlevel=99
vim.wo.foldexpr='nvim_treesitter#foldexpr()'

vim.g.expandtab=true
vim.g.shitftwidth=4
vim.g.tabstop=4
vim.g.title=true

-- Better Netrw
vim.g.netrw_banner = 0;
vim.g.netrw_browse_split = 4;
vim.g.netrw_altv = 1;
vim.g.netrw_liststyle = 3
vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]]

vim.cmd [[colorscheme tokyonight-night]]
