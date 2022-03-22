-- Adapted from:
-- https://www.mitchellhanberg.com/how-to-set-up-neovim-for-elixir-development/
-- https://alpha2phi.medium.com/neovim-init-lua-e80f4f136030
vim.cmd [[packadd packer.nvim]]

local startup = require("packer").startup

-- Command to use after making changes.
-- :PackerSync      -- this after making changes
-- :PackerInstall   -- this installs new packages
startup(function(use)
  -- language server configurations
  use "neovim/nvim-lspconfig"

  -- autocomplete and snippets
  use "hrsh7th/nvim-compe"
  use "hrsh7th/vim-vsnip"         -- Not sure I need this: https://github.com/hrsh7th/vim-vsnip
  use "hrsh7th/vim-vsnip-integ"   -- Not sure I need this: https://github.com/hrsh7th/vim-vsnip-integ

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use { 'sainnhe/everforest' }

  -- Syntax highlighting
  use { 'sheerun/vim-polyglot' }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- https://github.com/nvim-telescope/telescope.nvim
  -- :help telescope
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Conquer of Completion
  -- Had to remove since it was interferring with Elixir Language Server.
  -- [coc.nvim]: Some plugin change completeopt during completion: Last set from anonymous :source!
  -- use { 'neoclide/coc.nvim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- Surround
  use { 'tpope/vim-surround' }

  -- Commenting
  use { 'tpope/vim-commentary' }

  -- Lua Development
  use { 'tjdevries/nlua.nvim' }
end)
