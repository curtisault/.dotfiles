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

    -- Color scheme
    'neanias/everforest-nvim',
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000
    },

    -- Getting Fuzzy
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    'tpope/vim-dispatch',
    'tpope/vim-fugitive',
    'tpope/vim-commentary',
    'folke/neodev.nvim',

    --- LSP Zero Setup
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false
    },
    { 'neovim/nvim-lspconfig' },

    -- completion
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'rafamadriz/friendly-snippets' },

    -- Language Parser
    'nvim-treesitter/nvim-treesitter',

    -- Statuses are so cool
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
    },
}

local opts = {}

require("lazy").setup(plugins, opts)
