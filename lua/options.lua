


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.updatetime = 750

vim.opt.clipboard = 'unnamed'

vim.opt.relativenumber = true
vim.opt.number = true

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

vim.opt.magic = true

vim.opt.signcolumn = 'number'


-- lsp --
 
vim.diagnostic.config({ update_in_insert = true })
