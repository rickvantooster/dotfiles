local M = {}

servers = {"tsserver", "intelephense", "rust_analyzer", "sumneko_lua", "ltex", "marksman", "taplo", "html", "jsonls", "jedi_language_server"}

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatically_installation = true
})

M.servers = servers

return M
