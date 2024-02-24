


require('initLazy')

vim.opt.updatetime = 750
vim.opt.clipboard = 'unnamedplus'

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = true 
vim.opt.incsearch = true

vim.opt.scrolloff = 15 
vim.opt.colorcolumn = '100'

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeFocus, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>c', '<C-w>c', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>v', '<C-w>v', { noremap = true, silent = true })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('t', '<esc>', '<C-\\><C-n>', { noremap = true, silent = true })

vim.keymap.set('', '<C-k>', '{', { noremap = true, silent = true })
vim.keymap.set('', '<C-j>', '}', { noremap = true, silent = true })





