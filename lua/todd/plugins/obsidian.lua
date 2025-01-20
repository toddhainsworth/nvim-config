return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  event = {
    "BufReadPre " .. vim.fn.expand "~" .. "/notes/*.md",
    "BufNewFile " .. vim.fn.expand "~" .. "/notes/*.md"
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "notes",
        path = "~/notes",
      },
    },
    completion = {
      nvim_cmp = false
    }
  },
  config = function(_, opts)
    require("obsidian").setup(opts)

    -- HACK: fix error, disable completion.nvim_cmp option, manually register sources
    local cmp = require("cmp")
    cmp.register_source("obsidian", require("cmp_obsidian").new())
    cmp.register_source("obsidian_new", require("cmp_obsidian_new").new())
    cmp.register_source("obsidian_tags", require("cmp_obsidian_tags").new())
  end
}
