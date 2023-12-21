return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require('lspconfig');
		lspconfig.tsserver.setup {}
		lspconfig.lua_ls.setup {
			on_init = function(client)
				local path = client.workspace_folders[1].name
				if not vim.loop.fs_stat(path .. '/.luarc.json') and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
					client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
						Lua = {
							runtime = {
								version = 'LuaJIT'
							},
							workspace = {
								checkThirdParty = false,
								library = vim.api.nvim_get_runtime_file("", true)
							}
						}
					})

					client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
				end
				return true
			end
		}
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
	end
}
