-- Bultin lsp

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = (function()
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = 0 })
    vim.keymap.set('n', '<leader>ft', vim.lsp.buf.format, { buffer = 0 })
    vim.keymap.set('n', '<leader>vca', vim.lsp.buf.code_action, { buffer = 0 })
end)

-- (Optional) Configure lua language server for neovim
require 'lspconfig'.gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require 'lspconfig'.jdtls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

require 'lspconfig'.lua_ls.setup {
    on_init = function(client)
        local path = client.workspace_folders[1].name
        if not vim.loop.fs_stat(path .. '/.luarc.json') and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
            client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
                Lua = {
                    runtime = {
                        -- Tell the language server which version of Lua you're using
                        -- (most likely LuaJIT in the case of Neovim)
                        version = 'LuaJIT'
                    },
                    -- Make the server aware of Neovim runtime files
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME
                            -- "${3rd}/luv/library"
                            -- "${3rd}/busted/library",
                        }
                        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                        -- library = vim.api.nvim_get_runtime_file("", true)
                    }
                }
            })

            client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
        end
        return true
    end,
    on_attach = on_attach,
    capabilities = capabilities
}
