vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.E)

------------- Normal -------------
vim.keymap.set('n', '<esc>', '<cmd>noh<CR>') -- Clear highlights

------------- Buffers -------------
vim.keymap.set('n', '<leader>]', ':bnext<CR>')
vim.keymap.set('n', '<leader>[', ':bprevious<CR>')

-- Window Split
vim.keymap.set('n', '<leader>wl', '<cmd>vsplit<CR>')
vim.keymap.set('n', '<leader>wj', '<cmd>split<CR>')
vim.keymap.set('n', '<leader>wd', '<cmd>close<CR>')

-- Window Nav
vim.keymap.set('n', '<C-h>', '<C-w>h<CR>')
vim.keymap.set('n', '<C-j>', '<C-w>j<CR>')
vim.keymap.set('n', '<C-k>', '<C-w>k<CR>')
vim.keymap.set('n', '<C-l>', '<C-w>l<CR>')

-- Window Resize
vim.keymap.set('n', '<S-Up>', '<cmd>resize -2<CR>')
vim.keymap.set('n', '<S-Down>', '<cmd>resize +2<CR>')
vim.keymap.set('n', '<S-Left>', '<cmd>vertical resize -2<CR>')
vim.keymap.set('n', '<S-Right>', '<cmd>vertical resize +2<CR>')

-- Tab
vim.keymap.set('n', 'tt', '<c-w>T')
vim.keymap.set('n', 'th', ':tabfirst<CR>')
vim.keymap.set('n', 'tj', ':tabprev<CR>')
vim.keymap.set('n', 'tk', ':tabnext<CR>')
vim.keymap.set('n', 'tl', ':tablast<CR>')
vim.keymap.set('n', 'tn', ':tabnew<Space>')
vim.keymap.set('n', 'td', ':tabclose<CR>')


------------- Visual -------------
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

