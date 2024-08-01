return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup()

		-- set keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy grep files" })
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find open buffer" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope git_status<cr>", { desc = "Find string in status" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope git_commits<cr>", { desc = "Find find string in commits" })
	end,
}
