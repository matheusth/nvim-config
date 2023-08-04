local lspconfig = require('lspconfig')

lspconfig.cmake.setup{
    on_attach=(function(client, bufnr) 
        vim.keymap.set("n", "<leader>ft", vim.lsp.buf.formatting, {buffer = bufnr})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {buffer = bufnr})
    end),
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
