vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command


-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]

-- TODO: fix
-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

vim.cmd 'au BufRead,BufNewFile *.elm set filetype=elm'  -- Detect elm filetype

-- Imports
require 'settings'
require 'keymaps'
require 'plugins'
require 'config'
-- require 'lualine'
require 'telescope'
require 'cmp'
require 'lsp'

