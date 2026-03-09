local capabilities = require("cmp_nvim_lsp").default_capabilities()
return {
    cmd = {"clangd" },
    root_markers = {'.clangd', 'compile_commands.json'},
    file_types = { 'c', 'cpp' },
    capabilities = capabilities,
}
