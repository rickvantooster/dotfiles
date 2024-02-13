return {
	{
	    "nvim-treesitter/nvim-treesitter",
	    build = ":TSUpdate",
	    config = function()
		require("nvim-treesitter.configs").setup({
		    -- A list of parser names, or "all"
		    ensure_installed = {
			"vimdoc", "javascript", "typescript", "c", "lua", "rust",
			"jsdoc", "bash",
		    },

		    -- Install parsers synchronously (only applied to `ensure_installed`)
		    sync_install = false,

		    -- Automatically install missing parsers when entering buffer
		    -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
		    auto_install = true,

		    indent = {
			enable = true
		    },

		    highlight = {
			-- `false` will disable the whole extension
			enable = true,

			-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
			-- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
			-- Using this option may slow down your editor, and you may see some duplicate highlights.
			-- Instead of true it can also be a list of languages
			additional_vim_regex_highlighting = { "markdown" },
		    },
		})

	    end
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup{
				enable = true,
				max_lines = 1,
				min_window_height = 0,
				line_numbers = true,
				multiline_threshold = 20,
				trim_scope = 'inner',
				mode = "cursor",
				separator = nil,
				zindex = 20,
				on_attach = nil,

			}
		end

	}
}
