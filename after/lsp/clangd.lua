local capabilities = require("cmp_nvim_lsp").default_capabilities()
return {
    cmd = {"clangd" },
    root_markers = {'.clangd', 'compile_commands.json'},
    filetypes = { 'c', 'cpp' },
    capabilities = capabilities,
}
