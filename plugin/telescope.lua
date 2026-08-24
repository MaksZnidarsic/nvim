


vim.pack.add({
    'https://github.com/nvim-telescope/telescope.nvim',
    'https://github.com/nvim-lua/plenary.nvim'
})


vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files hidden=true<cr>', {})
vim.keymap.set('n', '<leader>g', '<cmd>Telescope live_grep<cr>', {})
