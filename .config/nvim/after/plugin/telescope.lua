local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

vim.keymap.set('n', '<leader>rg', function()
	builtin.grep_string({ search = vim.fn.input("rg > ")});
end)

-- TODO: find_files w/ fd
-- vim.keymap.set('n', '<leader>fd', function()
-- 	builtin.find_files({ search = vim.fn.input("")});
-- end)
