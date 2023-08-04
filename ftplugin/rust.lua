local rt = require("rust-tools")
local completion = require('cmp')

local extension_path = vim.env.HOME .. '/.local/share/nvim/mason/packages/codelldb/extension/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'

rt.setup({
  server = {
    on_attach = function(client, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
	vim.keymap.set("n", "<Leader>ft", vim.lsp.buf.formatting, {buffer = bufnr})
	vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, {buffer = bufnr})
	require('lsp-format').on_attach(client)
    end,
  },
    dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(
            codelldb_path, liblldb_path),

    }
})
