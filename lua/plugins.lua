require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Colour
  use 'dikiaap/minimalist'

  -- Git
  use 'tpope/vim-fugitive'

  -- Surround things
  use 'kylechui/nvim-surround'

  -- Highlight yanks
  use 'machakann/vim-highlightedyank'

  -- File tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    tag = 'nightly'
  }

  -- Find things
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-treesitter/nvim-treesitter'}
    }
  }
  -- Find things with FZF
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Comment things
  use 'numToStr/Comment.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'ms-jpq/coq_nvim'

  use 'jose-elias-alvarez/typescript.nvim'
end)

require('telescope').load_extension('fzf')
require('typescript').setup({})
require('nvim-surround').setup({
    aliases = {
        ["<"] = "t",
    },
})

local lspconfig = require('lspconfig')
local coq = require('coq')
lspconfig.pyright.setup(coq.lsp_ensure_capabilities())

require('nvim-tree').setup{
  git = {
    enable = true,
    ignore = false
  },
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  }
}
