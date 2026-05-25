


--                           _         
--    ____  ___  ____ _   __(_)___ ___ 
--   / __ \/ _ \/ __ \ | / / / __ `__ \
--  / / / /  __/ /_/ / |/ / / / / / / /
-- /_/ /_/\___/\____/|___/_/_/ /_/ /_/ 


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


-- keybindings --

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {})

vim.keymap.set('', '<C-k>', '{', {})
vim.keymap.set('', '<C-j>', '}', {})

vim.keymap.set('n', '<C-p>', '\"+p', {})
vim.keymap.set('v', '<C-y>', '\"+y', {})


-- lazy --

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- telescope --
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },

    -- oil.nvim --
    { 'stevearc/oil.nvim' },

    -- lsp_zero --
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
}, {})


--telescope--

vim.keymap.set('n', '<leader>f', ':Telescope find_files hidden=true<CR>', {})
vim.keymap.set('n', '<leader>g', ':Telescope live_grep<CR>', {})


-- oil.nvim --

require('oil').setup({
    watch_for_changes = true,
    view_options = {
        show_hidden = true
    },
    columns = {
        "size"
    },
    keymaps = {
        ["<C-CR>"] = "actions.open_external",
    }
})
vim.keymap.set('n', '<leader>e', vim.cmd.Oil, {})


-- lsp_zero --

local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        --'clangd', 'cmake', 'texlab'
    },
    handlers = {
        lsp_zero.default_setup,
    },
})


-- colorscheme --

vim.cmd.source('~/.config/nvim/pink.vim')
