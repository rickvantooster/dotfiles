local nnoremap = require("rick.keymap").nnoremap
local builtin = require("telescope.builtin")
local cc_state = false

nnoremap("<leader>pv", "<cmd>Ex<CR>")
local silent = {silent = true}

--Telescope
vim.keymap.set("n", "<leader>tff", builtin.find_files, {noremap=true}) 
vim.keymap.set("n", "<leader>tlg", "<cmd>Telescope live_grep<cr>", {noremap=true}) 
vim.keymap.set("n", "<leader>tht",builtin.help_tags, {noremap=true}) 
--nnoremap("<leader>tff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader><F11>", function ()
	vim.o.spell = not vim.o.spell
	print("spell: " .. tostring(vim.o.spell))

end, {noremap=true})

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>mf", function ()
	require("harpoon.mark").add_file()
end, {noremap=true})
vim.keymap.set("n", "<leader>ml", function ()
	require("harpoon.ui").toggle_quick_menu()
end, {noremap=true})
vim.keymap.set("n", "<leader>sc", function ()
	if cc_state then
		vim.opt.colorcolumn = ""
		cc_state = false
	else
		vim.opt.colorcolumn = "80"
		cc_state = true

	end
	
end, {noremap=true})
