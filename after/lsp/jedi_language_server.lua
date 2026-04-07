return {
    cmd = {"jedi-language-server"},
    filetypes = {"python"},
    root_markers = {"requirements.txt", "pyproject.toml", ".git"},
    capabilities = require("cmp_nvim_lsp").default_capabilities()
}

