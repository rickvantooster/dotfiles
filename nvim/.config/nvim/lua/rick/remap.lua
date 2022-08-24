local nnoremap = require("rick.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

--Telescope
nnoremap("<leader>tff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>tlg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>tfb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>tht", "<cmd>Telescope help_tags<cr>")
