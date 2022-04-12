-- Adapted from:
-- https://alpha2phi.medium.com/neovim-init-lua-e80f4f136030
local utils = require('utils')
local cmd = vim.cmd
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'background', 'dark')

-- Added 2021-08-01, Kurt Symanzik
vim.g['everforest_background'] = 'soft'
vim.g['everforest_transparent_background'] = 0

cmd 'colorscheme everforest'

