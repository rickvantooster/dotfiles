-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

 return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use "nvim-lua/plenary.nvim"
	use {
		"nvim-telescope/telescope.nvim",
		tag = '0.1.0',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	use("nvim-treesitter/nvim-treesitter", {
		run = ":TSUpdate"
	})
	use "ThePrimeagen/harpoon"
	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

	--debugger.
	use "mfussenegger/nvim-dap"
	use "rcarriga/nvim-dap-ui"
	use "theHamsta/nvim-dap-virtual-text"
	use "nvim-telescope/telescope-dap.nvim"
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	--per project styling
	use "gpanders/editorconfig.nvim"
	-- color scheme
	use "folke/tokyonight.nvim"

	-- lsp 
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  -- {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use "tpope/vim-fugitive"

end)
