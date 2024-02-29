vim.g.mapleader = " "
vim.g.localmapleader = ""

-- line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.breakindent = true

-- set clipboard
vim.o.clipboard = "unnamedplus"

-- netrw config
vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = "cp -r"

vim.o.undodir = vim.fn.expand("~/.undodir")
vim.o.undofile = true

-- Ignore case if all search is lowered case.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sign column
vim.opt.signcolumn = "yes"

-- split right and bellow
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.cursorline = true
vim.opt.hlsearch = true;
