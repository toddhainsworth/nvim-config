return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
  opts = {
    ui = {
      border = "rounded"
    }
  },
	config = function(opts)
		require("mason").setup(opts)

		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = {
				"eslint",
				"jsonls",
				"ts_ls",
				"marksman",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"eslint_d",
			},
		})
	end,
}
