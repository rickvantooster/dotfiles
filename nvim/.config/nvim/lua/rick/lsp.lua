local M = {}
-- "ltex",
servers = {"tsserver", "intelephense", "rust_analyzer", "sumneko_lua",  "marksman", "taplo", "html", "jsonls", "jedi_language_server", "jdtls", "arduino_language_server", "clangd"}

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatically_installation = true
})

M.servers = servers

return M
