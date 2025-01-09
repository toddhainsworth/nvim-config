return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	keys = {
		{ "<leader><leader>", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files in cwd" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Fuzzy grep files" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Fuzzy find open buffers" },
	},
}
