vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, { buffer = ev.buffer })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = ev.buffer})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer = ev.buffer})
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    end,
})
