


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {})

vim.keymap.set('', '<C-k>', '{', {})
vim.keymap.set('', '<C-j>', '}', {})

vim.keymap.set('n', '<C-p>', '\"+p', {})
vim.keymap.set('v', '<C-y>', '\"+y', {})
