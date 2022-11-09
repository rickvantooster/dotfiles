require("nvim-lsp-installer").setup {}
local Remap = require("rick.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local util = require'lspconfig/util'
local servers = require("rick.lsp").servers
local lspconfig = require("lspconfig")



local cmp = require("cmp")

cmp.setup {
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end
	},
	mapping = cmp.mapping.preset.insert({
		['<C-y>'] = cmp.mapping.confirm({select = true}),
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
	sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'vsnip'},
		{name = 'nvim_lsp_signature_help'},
		{name = 'path'},
		{name = 'nvim_lua'},
	}, {
		{name = 'buffer'}
	})
}


local on_attach = function(client, bufnr)
	nnoremap("<leader>gd", function() vim.lsp.buf.definition() end)
	nnoremap("<leader>K", function() vim.lsp.buf.hover() end)
	nnoremap("<leader>ws", function() vim.lsp.buf.workspace_symbol() end)
	nnoremap("<leader>of", function() vim.diagnostic.open_float() end)
	nnoremap("<leader>[d", function() vim.diagnostic.goto_next() end)
	nnoremap("<leader>]d", function() vim.diagnostic.goto_prev() end)
	nnoremap("<leader>ca", function() vim.lsp.buf.code_action() end)
	nnoremap("<leader>fr", function() vim.lsp.buf.references() end)
	nnoremap("<F2>", function() vim.lsp.buf.rename() end)
	nnoremap("<leader>sh", function() vim.lsp.buf.signature_help() end)
end
	
local function config(_config)
	return vim.tbl_deep_extend("force", {
--		capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
		capabilities = require("cmp_nvim_lsp").default_capabilities(),
		on_attach = on_attach
	}, _config or {})
end

-- require("lspconfig").tsserver.setup(config({
	--root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git", ".js_dir")
--}))


-- require'lspconfig'.intelephense.setup(config())

-- require("lspconfig").rust_analyzer.setup(config())

for _, server in ipairs(servers) do
	if server == "intelephense" then 
		lspconfig[server].setup(config({
			root_dir = util.root_pattern("composer.json", ".git", ".editorconfig", "www", "htdocs")
		}))

	else
		lspconfig[server].setup(config())
	end

end
