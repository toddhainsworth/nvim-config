return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.export"] = {},
				["external.interim-ls"] = {},
				["core.completion"] = {
					config = { engine = { module_name = "external.lsp-completion" } },
				},
				["core.ui.calendar"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
						},
						default_workspace = "notes",
					},
				},
			},
		})

		vim.wo.foldlevel = 99
		vim.wo.conceallevel = 2
		local keymap = vim.keymap

		-- <leader>nn will prompt to create a new note
		keymap.set("n", "<leader>no", "<cmd>Neorg index<cr>", { desc = "Go to Neorg index" })
		keymap.set("n", "<leader>nj", "<cmd>Neorg journal today<cr>", { desc = "Go to Neorg journal for today" })
		keymap.set(
			"n",
			"<leader>nr",
			"<cmd>Neorg return<cr>",
			{ desc = "Return back to where I was before opening Neorg" }
		)
		keymap.set(
			"n",
			"<leader>ne",
			"<cmd>Neorg export to-file export.md<cr>",
			{ desc = "Export current file to Markdown" }
		)
	end,
}
