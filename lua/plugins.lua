require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Colour
  use 'dikiaap/minimalist'

  -- Git
  use 'tpope/vim-fugitive'

  -- Surround things
  use 'tpope/vim-surround'

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
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Find things with FZF
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Comment things
  use 'terrortylor/nvim-comment'

  -- Navigate in a file
  use 'ggandor/leap.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
end)

require('telescope').load_extension('fzf')
require('nvim_comment').setup({ comment_empty = false })
require('leap').set_default_keymaps()
require('lspconfig').pyright.setup{}
