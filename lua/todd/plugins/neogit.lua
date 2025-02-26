return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
	},
	opts = {},
	keys = {
		{ "<leader>ng", "<cmd>Neogit<cr>", desc = "Open Neogit" },
	},
}
