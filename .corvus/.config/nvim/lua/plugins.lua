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
  use 'neovim/nvim-lspconfig'

   -- cmp plugins
  use 'hrsh7th/nvim-cmp' -- The completion plugin
  -- use 'hrsh7th/cmp-buffer' -- buffer completions
  -- use 'hrsh7th/cmp-path' -- path completions
  -- use 'hrsh7th/cmp-cmdline' -- cmdline completions
  -- use 'saadparwaiz1/cmp_luasnip' -- snippet completions
  -- use 'hrsh7th/cmp-nvim-lsp'

  -- snippet engine (required for cmp)
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use 'sainnhe/everforest'

  -- Syntax highlighting
  use 'sheerun/vim-polyglot'

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

  use {
    "nvim-neorg/neorg",
    config = function()
      require('neorg').setup {
        load = {
          ["core.defaults"] = {}
        }
    } end,
    requires = "nvim-lua/plenary.nvim"
  }

  use 'tpope/vim-dispatch'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tjdevries/nlua.nvim'
end)
