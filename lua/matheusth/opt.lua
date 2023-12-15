vim.cmd("syntax on")

vim.g.mapleader=" "
vim.g.netrw_keepdir=0
vim.g.netrw_banner=0
vim.g.netrw_winsize=30
vim.g.netrw_localcopydircmd='cp -r'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.wo.conceallevel = 1

require("catppuccin").setup({
    flavour = "mocha",
    integrations = {
        cmp=true,
        gitsigns=true,
        nvimtree=true,
        treesitter=true,
    }
})


vim.cmd.colorscheme "catppuccin"
