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
    "nvim-telescope/telescope.nvim", -- TODO: replace with snacks-picker
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
    },
    preferred_link_style = "wiki",
    follow_url_func = vim.ui.open,
    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d"
    },
    daily_notes = {
      folder = "dailies",
      template = "daily"
    }
  },
  keys = {
    { "<leader>od", "<cmd>ObsidianToday<cr>",   desc = "Open today's daily" },
    { "<leader>ot", "<cmd>ObsidianToday 1<cr>", desc = "Open tomorrow's daily" },
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
