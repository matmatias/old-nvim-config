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
  -- which key
  use "folke/which-key.nvim"
  -- autocompletion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
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
end)
