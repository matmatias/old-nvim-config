return require('packer').startup(function(use)
  -- packer
  use 'wbthomason/packer.nvim'
  -- themes
  use 'ellisonleao/gruvbox.nvim'
  -- nvim web devicons
  use 'kyazdani42/nvim-web-devicons'
  -- nvim tree
  use 'kyazdani42/nvim-tree.lua'
  -- lspconfig
  use 'neovim/nvim-lspconfig'
  -- mason
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "mfussenegger/nvim-dap",
    "jose-elias-alvarez/null-ls.nvim"
  }
  -- which key
  use "folke/which-key.nvim"
  -- autocompletion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- autopairs
  use 'windwp/nvim-autopairs'
  -- autocompletion icons
  use 'onsails/lspkind.nvim'
  -- status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  -- syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  }
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'p00f/nvim-ts-rainbow'
  use 'windwp/nvim-ts-autotag'
  -- telescope and dependencies
  use 'nvim-lua/plenary.nvim'
  use 'BurntSushi/ripgrep'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'sharkdp/fd'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
