return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		default_component_configs = {
			name = {
				use_git_status_colors = false,
			},
		},
	},
	keys = {
		{ "<leader>nt", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree" },
		{ "<leader>nf", "<cmd>Neotree reveal<cr>", desc = "Toggle Neotree at current file" },
	},
}
