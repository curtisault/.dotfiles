local lsp_zero = require('lsp-zero')

-- open error on hover
vim.api.nvim_create_autocmd('CursorHold', {
    callback = function()
        local opts = {
            focusable = false,
            close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
            border = 'rounded',
            source = 'always',
            prefix = ' ',
            scope = 'cursor',
        }
        vim.diagnostic.open_float(nil, opts)
    end,
})

lsp_zero.on_attach(function(client, bufnr)
    vim.keymap.set('n', '<C-]>', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
    vim.keymap.set('n', '<C-s>', vim.lsp.buf.signature_help, {})
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, {})
    vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', {})
    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', {})
end)

-- Uncomment (if not using Mason) to manually setup each LS
-- local lua_opts = lsp_zero.nvim_lua_ls()
-- require('lspconfig').lua_ls.setup(lua_opts)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      'elixirls',
      'rust_analyzer'
  },
  handlers = {
    lsp_zero.default_setup,
  },
})
