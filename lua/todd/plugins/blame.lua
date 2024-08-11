return {
	"FabijanZulj/blame.nvim",
	config = function()
		require("blame").setup()

		local keymap = vim.keymap

		keymap.set("n", "<leader>gb", ":BlameToggle<cr>", { desc = "Toggle Git Blame" })
	end,
}
