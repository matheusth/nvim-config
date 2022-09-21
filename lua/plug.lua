return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- colorschemes
	use 'folke/tokyonight.nvim'
	use 'nvim-lualine/lualine.nvim'

	use {
	  'kyazdani42/nvim-tree.lua',
	  requires = {
	    'kyazdani42/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use 'neovim/nvim-lspconfig'
	use 'simrat39/rust-tools.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use "lukas-reineke/lsp-format.nvim"

	-- Debugging
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'
	use { "williamboman/mason.nvim" }
	    -- Completion framework:
	use 'hrsh7th/nvim-cmp' 

	-- LSP completion source:
	use 'hrsh7th/cmp-nvim-lsp'

	-- Useful completion sources:
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                              
	use 'hrsh7th/cmp-buffer'                            
	use 'hrsh7th/vim-vsnip'
end)
