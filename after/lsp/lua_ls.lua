local capabilities = require("cmp_nvim_lsp").default_capabilities()
return {
    cmd = {"lua-language-server"},
    capabilities = capabilities,
    filetypes = {"lua"},
    root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            }
        }
    }
}
