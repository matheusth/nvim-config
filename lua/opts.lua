vim.wo.relativenumber=true
vim.wo.number=true
vim.g.python3_host_prog="/usr/bin/python3"
vim.g.poetv_auto_activate = 1

vim.wo.foldmethod='expr'
vim.wo.foldlevel=99
vim.wo.foldexpr='nvim_treesitter#foldexpr()'

vim.o.expandtab=true
vim.o.shiftwidth=4
vim.o.tabstop=4
vim.o.title=true

-- Better Netrw
vim.g.netrw_banner = 0;
vim.g.netrw_browse_split = 4;
vim.g.netrw_altv = 1;
vim.g.netrw_liststyle = 3
vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]]

-- Emmet config
vim.g.user_emmet_leader_key='<C-Z>'

vim.cmd [[colorscheme tokyonight-night]]
