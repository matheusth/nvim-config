vim.g.mapleader=';'

function noremap(mode, lhs, rhs)
	vim.keymap.set('n', lhs, rhs, {silent = true, noremap = true })
end

noremap('n', '<F2>', "<cmd> NvimTreeToggle <cr>")
noremap('n', '<leader>e', "<cmd> bprevious <cr>")
noremap('n', '<leader>q', "<cmd> bnext <cr>")
