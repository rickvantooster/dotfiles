vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.expandtab = false
vim.opt.tabstop=8
vim.opt.shiftwidth=8
vim.opt.errorbells=false

vim.g.mapleader = " "
vim.opt.syntax = "on"
vim.opt.termguicolors = true

vim.diagnostic.config({
	virtual_text = true,
	update_in_insert = true
})

vim.o.spelllang = 'nl'
