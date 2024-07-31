return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup()
		local keymap = vim.keymap

		keymap.set("n", "<leader>nt", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neotree" })
		keymap.set("n", "<leader>nf", "<cmd>Neotree reveal<cr>", { desc = "Toggle Neotree at current file" })
	end,
}
