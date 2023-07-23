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
    tag = 'nightly'
  }

  -- Find things
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-treesitter/nvim-treesitter'},
      {'nvim-treesitter/nvim-treesitter-textobjects'}
    }
  }
  -- Find things with FZF
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Comment things
  use 'numToStr/Comment.nvim'

  -- LSP
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp'
  }
  use 'jose-elias-alvarez/typescript.nvim'

  -- Magit in Neovim!
  use { 'NeogitOrg/neogit', requires = 'nvim-lua/plenary.nvim' }

  -- Pair brackets, quotes, etc
  use 'windwp/nvim-autopairs'

  -- Lualine!
  use {
      'nvim-lualine/lualine.nvim',
      'nvim-tree/nvim-web-devicons'
  }

  -- Zen mode (for writing READMEs)
  use 'folke/zen-mode.nvim'

  -- Errors and such
  use 'folke/trouble.nvim'

  -- Preview markdown
  use {
      'iamcco/markdown-preview.nvim',
      run = function() vim.fn['mkdp#util#install']() end,
  }

  -- Make CSVs readable
  use 'mechatroner/rainbow_csv'

  -- Indent guides - I missed this soooo much
  use "lukas-reineke/indent-blankline.nvim"
end)
