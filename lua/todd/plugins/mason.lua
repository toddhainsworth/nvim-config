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
				"ts_ls",
        "lua_ls",
				"eslint",
				"marksman",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"ts_ls",
				"eslint",
				"marksman",
				"prettierd",
				"stylua",
				"eslint_d",
			},
		})
	end,
}
