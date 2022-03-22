local utils = require('utils')

------------- Normal -------------
utils.map('n', '<esc>', '<cmd>noh<CR>') -- Clear highlights

-- Window Split
utils.map('n', '<leader>fw', '<cmd>w<CR>')
utils.map('n', '<leader>wl', '<cmd>vsplit<CR>')
utils.map('n', '<leader>wj', '<cmd>split<CR>')
utils.map('n', '<leader>wd', '<cmd>close<CR>')

-- Window Nav
utils.map('n', '<C-h>', '<C-w>h<CR>')   
utils.map('n', '<C-j>', '<C-w>j<CR>')
utils.map('n', '<C-k>', '<C-w>k<CR>')
utils.map('n', '<C-l>', '<C-w>l<CR>')

-- Window Resize
utils.map('n', '<S-Up>', '<cmd>resize -2<CR>')
utils.map('n', '<S-Down>', '<cmd>resize +2<CR>')
utils.map('n', '<S-Left>', '<cmd>vertical resize -2<CR>')
utils.map('n', '<S-Right>', '<cmd>vertical resize +2<CR>')

-- Tab
utils.map('n', 'tt', '<c-w>T')
utils.map('n', 'th', '<cmd>tabfirst<CR>')
utils.map('n', 'tj', '<cmd>tabnext<CR>')
utils.map('n', 'tk', '<cmd>tabprev<CR>')
utils.map('n', 'tl', '<cmd>tablast<CR>')
utils.map('n', 'tn', '<cmd>tabnew<CR>')
utils.map('n', 'td', '<cmd>tabclose<CR>')

-- Adapted from: https://alpha2phi.medium.com/neovim-init-lua-e80f4f136030
-- Find files using Telescope command-line sugar.
-- Needed to install ripgrep and fd for some of these to work.
utils.map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
utils.map('n', '<leader>fs', '<cmd>Telescope grep_string<cr>')

------------- Visual -------------
utils.map('v', '<', '<gv')   -- Window Nav
utils.map('v', '>', '>gv')   -- Window Nav
