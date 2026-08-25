


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.keymap.set('t', '<esc>', '<c-\\><c-n>', {})

vim.keymap.set('', '<c-k>', '{', {})
vim.keymap.set('', '<c-j>', '}', {})

vim.keymap.set('n', '<c-p>', '\"+p', {})
vim.keymap.set('v', '<c-y>', '\"+y', {})


-- lsp --

local opts = { silent = true }



-- currently not working
--vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts) -- smart rename

vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, opts) -- show docs
-- haven't decided on keybinds
--vim.keymap.set('n', '<leader>', vim.lsp.buf.definition, opts)
--vim.keymap.set('n', '<leader>', vim.lsp.buf.declaration, opts)



vim.keymap.set('n', '<leader>D', '<cmd>Telescope diagnostics<cr><esc>', opts)
vim.keymap.set('n', '<leader>d', function()
  vim.diagnostic.config({ virtual_lines = { current_line = true }, virtual_text = false })

  vim.api.nvim_create_autocmd('CursorMoved', {
    group = vim.api.nvim_create_augroup('line-diagnostics', { clear = true }),
    callback = function()
      vim.diagnostic.config({ virtual_lines = false, virtual_text = false })
      return true
    end,
  })
end)
