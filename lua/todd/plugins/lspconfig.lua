return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"saghen/blink.cmp",
		{ "folke/neodev.nvim", opts = {} },
	},
	opts = { servers = {
		ts_ls = {},
		jsonls = {},
		eslint = {},
		marksman = {},
		gopls = {},
	} },
	config = function(_, opts)
		local mason_lspconfig = require("mason-lspconfig")

		local on_attach = function(client, bufnr)
			-- format on save
			if client.server_capabilities.documentFormattingProvider then
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = vim.api.nvim_create_augroup("Format", { clear = true }),
					buffer = bufnr,
					callback = function()
						-- organize imports on save for typescript files
						if vim.bo.filetype == "typescript" then
							vim.lsp.buf.execute_command({
								command = "_typescript.organizeImports",
								arguments = { vim.api.nvim_buf_get_name(0) },
								title = "Organize Imports",
							})
						end

						vim.lsp.buf.format()
					end,
				})
			end
		end

		local lspconfig = require("lspconfig")
		for server, config in pairs(opts.servers) do
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end
	end,
}
