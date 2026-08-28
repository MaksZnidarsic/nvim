


vim.pack.add({
    'https://github.com/williamboman/mason.nvim',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/williamboman/mason-lspconfig.nvim',
    'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim.git',

    'https://github.com/saghen/blink.cmp',
    'https://github.com/saghen/blink.lib',
})


require('mason').setup()
require('mason-lspconfig').setup()
require('mason-tool-installer').setup({
    ensure_installed = {
        'clangd', 'rust_analyzer', 'texlab', 'tinymist', 'ty'
    }
})

local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
    keymap = {
        preset = 'none',

        ['<c-p>'] = { 'select_prev', 'fallback_to_mappings' },
        ['<c-n>'] = { 'select_next', 'fallback_to_mappings' },

        ['<c-space>'] = { 'select_and_accept', 'fallback' },
    }
})


-- options --

vim.diagnostic.config({ update_in_insert = true })

-- keybinds --

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
      local opts = { buffer = ev.buf, silent = true }

      vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, opts) -- show docs
      vim.keymap.set('n', '<leader>v', vim.lsp.buf.definition, opts) -- v for view
      -- haven't decided on keybinds
      --vim.keymap.set('n', '<leader>', vim.lsp.buf.declaration, opts)

      -- currently not working
      --vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts) -- smart rename

      vim.keymap.set('n', '<leader>D', '<cmd>Telescope diagnostics<cr><esc>', opts)
      vim.keymap.set('n', '<leader>d', function() -- script to open virtual lines
          vim.diagnostic.config({ virtual_lines = { current_line = true }, virtual_text = false })

          vim.api.nvim_create_autocmd('CursorMoved', {
              group = vim.api.nvim_create_augroup('line-diagnostics', { clear = true }),
              callback = function()
                  vim.diagnostic.config({ virtual_lines = false, virtual_text = false })
                  return true
              end,
          })
      end, opts)
  end
})
