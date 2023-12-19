local ls = require('luasnip')
local s = ls.s
local fmt = require('luasnip.extras.fmt').fmt
local rep = require('luasnip.extras').rep
local i = ls.insert_node
vim.keymap.set({ "i", "s" }, "<c-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })


vim.keymap.set({ "i", "s" }, "<c-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, { silent = true })


ls.snippets = {
    all = {
        ls.parser.parse_snippet("lorem",
            "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur molestie imperdiet magna, et euismod eros congue sit amet. Quisque at blandit metus. Integer eget elit suscipit, commodo nisi vel, volutpat arcu. Aenean a egestas urna, nec scelerisque risus. Donec malesuada ipsum tincidunt est cursus, eget commodo turpis finibus. Praesent a iaculis lorem. Sed faucibus tortor sit amet lorem ornare malesuada. \"")
    },
    lua = {
        ls.parser.parse_snippet("lf", "local $1 = function($2)\n $0 \nend"),
        s("req", fmt("local {} = require('{}')",{ i(1), rep(1)})),
    }
}
