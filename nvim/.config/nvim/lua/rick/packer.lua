-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

 return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
--	use 'shaunsingh/nord.nvim'
	use "neovim/nvim-lspconfig"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/nvim-cmp"
	use 'hrsh7th/vim-vsnip'
	use "hrsh7th/cmp-nvim-lsp-signature-help"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-nvim-lua"
	use("nvim-treesitter/nvim-treesitter", {
		run = ":TSUpdate"
	})
	use "williamboman/nvim-lsp-installer"
	use "nvim-lua/plenary.nvim"
	use {
		"nvim-telescope/telescope.nvim",
		tag = '0.1.0',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

	use "mfussenegger/nvim-dap"
	use "rcarriga/nvim-dap-ui"
	use "theHamsta/nvim-dap-virtual-text"
	use "nvim-telescope/telescope-dap.nvim"
	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use "gpanders/editorconfig.nvim"
	use "folke/tokyonight.nvim"

end)
