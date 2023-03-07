local nnoremap = require("rick.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
local silent = {silent = true}

--Telescope
nnoremap("<leader>tff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>tlg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>tfb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>tht", "<cmd>Telescope help_tags<cr>")
nnoremap("<leader><F11>", function ()
	vim.o.spell = not vim.o.spell
	print("spell: " .. tostring(vim.o.spell))

end)

vim.keymap.set("i", "<C-c>", "<Esc>")

nnoremap("<leader>mf", function ()
	require("harpoon.mark").add_file()
end, silent)

nnoremap("<leader>ml", function ()
	require("harpoon.ui").toggle_quick_menu()
end, silent)
