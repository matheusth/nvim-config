return {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.1", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = function()
        local ls = require("luasnip")
        local s = ls.snippet
        local i = ls.insert_node
        require("luasnip.loaders.from_vscode").lazy_load({})
        local fmt = require "luasnip.extras.fmt".fmt
        vim.keymap.set({ "i" }, "<c-k>", function() ls.expand() end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-L>", function() ls.jump(1) end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(-1) end, { silent = true })
        ls.add_snippets("all", {
            s("lorem", fmt("lorem ipsum dolor sit ammet {}.", { i(0) }))
        })
    end,
    dependencies = { "rafamadriz/friendly-snippets" },
}
