return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("neogit").setup({
			auto_close_console = false,
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>ng", "<cmd>Neogit<cr>", { desc = "Open Neogit" })
	end,
}
