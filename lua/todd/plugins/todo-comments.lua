return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	opts = {},
	keys = {
		{ "<leader>tt", "<cmd>TodoTelescope<cr>", desc = "Search for TODOs via Telescope" },
	},
}
