vim.g.mapleader=';'

function noremap(mode, lhs, rhs)
	vim.keymap.set('n', lhs, rhs, {silent = true, noremap = true })
end

noremap('n', '<leader>e', "<cmd> NvimTreeToggle <cr>")
noremap('n', '<leader>p', "<cmd> bprevious <cr>")
noremap('n', '<leader>n', "<cmd> bnext <cr>")
