return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("todo-comments").setup()
		local keymap = vim.keymap

		keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<cr>", { desc = "Search for TODOs via Telescope" })
	end,
}
