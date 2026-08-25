


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('t', '<esc>', '<c-\\><c-n>', {})

vim.keymap.set('', '<c-k>', '{', {})
vim.keymap.set('', '<c-j>', '}', {})

vim.keymap.set('n', '<c-p>', '\"+p', {})
vim.keymap.set('v', '<c-y>', '\"+y', {})
