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
    -- Syntax highlighting (unsure if needed)
    -- 'sheerun/vim-polyglot',

    { 'echasnovski/mini.nvim', version = false },

    -- Color schemes
    'neanias/everforest-nvim',
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "ellisonleao/gruvbox.nvim", priority = 1000 },

    -- Explore but more better
    {
      'stevearc/oil.nvim',
      opts = {},
      -- Optional dependencies
      dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    'tpope/vim-dispatch',
    'tpope/vim-fugitive',
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

    -- MARKDOWN
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {},
      dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    },

    -- Copilot
    'github/copilot.vim',
}

local opts = {}

require("lazy").setup(plugins, opts)
