local capabilities = require("cmp_nvim_lsp").default_capabilities()
return {
    cmd = { "emmet-ls", "--stdio" },
    capabilities = capabilities,
    filetypes = { "html", "djangohtml", "css", "javascript", "htmldjango" },
    root_markers = { '.git' },
}
