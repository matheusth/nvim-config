vim.g.mapleader=';'

rusttools = require'rust-tools'

function noremap(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, {silent = true, noremap = true })
end

noremap('n', '<F2>', "<cmd> NvimTreeToggle <cr>")
noremap('n', '<leader>e', "<cmd> bprevious <cr>")
noremap('n', '<leader>q', "<cmd> bnext <cr>")
noremap('n', '<leader>fd', "<cmd> :Explore <cr>")
