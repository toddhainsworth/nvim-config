return {
  {
    "saghen/blink.cmp",
    dependencies = { "saghen/blink.compat" },
    version = "*",
    opts = {
      keymap = { preset = "super-tab" },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
          "obsidian",
          "obsidian_new",
          "obsidian_tags"
        },
        providers = {
          obsidian = {
            name = "obsidian",
            module = "blink.compat.source",
          },
          obsidian_new = {
            name = "obsidian_new",
            module = "blink.compat.source",
          },
          obsidian_tags = {
            name = "obsidian_tags",
            module = "blink.compat.source",
          },
        },
      },
      completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
      },
    },
    opts_extend = { "sources.default" },
  }
}
