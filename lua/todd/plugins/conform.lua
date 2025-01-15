return {
  'stevearc/conform.nvim',
  lazy = false,
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      rust = { "rustfmt", lsp_format = "fallback" },
      typescript = { "prettierd", "prettier", "eslint_d", stop_after_first = true },
    },
    format_on_save = { timeout_ms = 500 },
    log_level = vim.log.levels.DEBUG,
  },
  config = function(opts)
    require('comform').setup(opts)
  end
}
