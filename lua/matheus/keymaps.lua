vim.keymap.set('n', '<leader>pv', vim.cmd.Explore, {})
vim.keymap.set('n', '<leader>q', ':bp<CR>', {})
vim.keymap.set('n', '<leader>e', ':bn<CR>', {})

-- LSP Keymaps
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }

		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

		vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, opts)
	end
})

local opt = "t";
