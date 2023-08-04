local lspconfig = require('lspconfig')
local completion = require('cmp')


lspconfig.pyright.setup{
    on_attach=(function(client, bufnr) 
	vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	vim.keymap.set("n", "<leader>ft", vim.lsp.buf.formatting, {buffer = bufnr})
	vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {buffer = bufnr})
end),
    capabilities=require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
