return {
	'nvim-lualine/lualine.nvim',
	config = function()
		require'lualine'.setup({
			options = {
				theme = 'catppuccin-nvim',
				section_separators = {left = '', right = ''},
				component_separators = {left = '', right = ''},
			},
			sections = {
				lualine_c = {'buffers'}
			}
		})
	end
}
