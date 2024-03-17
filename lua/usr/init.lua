


require('usr.initLazy')

vim.opt.updatetime = 750
vim.opt.clipboard = 'unnamedplus'

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.termguicolors = true

vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.expandtab = true

vim.opt.hlsearch = false 
vim.opt.incsearch = true

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

vim.opt.scrolloff = 15 
vim.opt.colorcolumn = '100'

vim.o.shell = 'powershell.exe'

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>q', ':wa<CR>:qa!<CR>', {})

vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeFocus, {})

vim.keymap.set('n', '<leader>l', '<C-w>l', {})
vim.keymap.set('n', '<leader>h', '<C-w>h', {})
vim.keymap.set('n', '<leader>k', '<C-w>k', {})

vim.keymap.set('n', '<leader>j', '<C-w>j', {})

vim.keymap.set('n', '<leader>v', '<C-w>v', {})
vim.keymap.set('n', '<leader>c', ':q<CR>', {})

vim.keymap.set('n', 'J', 'i<CR><Esc>ko', {})
vim.keymap.set('n', 'K', 'k', {})


vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", {})
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", {})


vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {})


vim.keymap.set('', '<C-k>', '{', {})
vim.keymap.set('', '<C-j>', '}', {})





