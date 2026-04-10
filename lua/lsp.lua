vim.lsp.config("*", {
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            },
        },
    },
    root_markers = { ".git" },
})

vim.lsp.config("ts_ls", {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "typescript", "javascript", "json", "jsonc" },
})

vim.lsp.config("ruff", {
    cmd = {"ruff", "server", "--preview"},
    filetypes = {"python"},
    root_markers = {"pyproject.toml", ".git"},
})

vim.lsp.enable({"ruff", "ts_ls"})
