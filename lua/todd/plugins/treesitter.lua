return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	opts = {
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = { enable = true },
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"json",
			"javascript",
			"typescript",
			"yaml",
			"lua",
			"vim",
			"gitignore",
			"query",
			"markdown",
			"markdown_inline",
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = false,
				node_decremental = "<bs>",
			},
		},
		rainbow = {
			enable = true,
			disable = { "html" },
			extended_mode = true,
			max_file_lines = nil,
		},
		context_commentstring = {
			enable = true,
			enable_autocmd = false,
		},
	},
	config = function(opts)
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup(opts)
	end,
}
