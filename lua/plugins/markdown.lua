return {
    "iamcco/markdown-preview.nvim",
    build = "cd app && yarn install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
        vim.g.mkdp_browser = 'firefox'
    end,
    ft = { "markdown" },
}
