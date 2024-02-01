vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, { buffer = ev.buffer })
    end,
})
