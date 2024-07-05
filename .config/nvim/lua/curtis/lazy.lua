local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Syntax highlighting
    'sheerun/vim-polyglot',

    -- Color schemes
    'neanias/everforest-nvim',
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { 'ellisonleao/gruvbox.nvim', priority = 1000 },
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },

    -- Getting Fuzzy
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Explore but more better
    {
      'stevearc/oil.nvim',
      opts = {},
      -- Optional dependencies
      dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    'tpope/vim-dispatch',
    'tpope/vim-fugitive',
    'tpope/vim-commentary',
    'folke/neodev.nvim',

    --- LSP Zero Setup
    { 
        'VonHeikemen/lsp-zero.nvim', 
        branch = 'v3.x' 
    },

    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'L3MON4D3/LuaSnip' },

    -- Language Parser
    'nvim-treesitter/nvim-treesitter',

    -- Statuses are so cool
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
    },

    -- pomodoro timer for timeboxing tasks
    {
        'epwalsh/pomo.nvim',
        version = '*', -- Recommended, use latest release instead of latest commit
        lazy = true,
        cmd = { 'TimerStart', 'TimerRepeat' },
        dependencies = {
            -- Optional, but highly recommended if you want to use the "Default" timer
            'rcarriga/nvim-notify',
        },
        opts = {
            -- See below for full list of options 👇
        },
    },

    -- NOICE - Lazy notifications
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      opts = {
        -- add any options here
      },
      dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
        }
    },

    -- Copilot
    'github/copilot.vim',

    -- Cody AI
    {
        {
            'sourcegraph/sg.nvim',
            dependencies = { 'nvim-lua/plenary.nvim', --[[ 'nvim-telescope/telescope.nvim' ]] },

            -- If you have a recent version of lazy.nvim, you don't need to add this!
            build = 'nvim -l build/init.lua',
        },
    },
}

local opts = {}

require("lazy").setup(plugins, opts)
