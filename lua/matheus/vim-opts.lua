vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.g.clipboard = {
    name = "wl-clipboard",
    copy = {
        ["+"] = 'wl-copy --foreground --type text/plain',
        ["*"] = 'wl-copy --foreground --primary --type text/plain',
    },
    paste = {
        ["+"] = (function()
            return vim.fn.systemlist('wl-paste --no-newline|sed -e "s/\r$//"', { '' }, 1)       -- '1' keeps empty lines
        end),
        ["*"] = (function()
            return vim.fn.systemlist('wl-paste --primary --no-newline|sed -e "s/\r$//"', { '' }, 1)
        end),
    },
}

vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = 'cp -r'

vim.o.undodir = vim.fn.expand('~/.undodir')
vim.o.undofile = true

vim.opt.smartindent = true
