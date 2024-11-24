


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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


--keybindings--

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>q', ':q<CR>', {})
vim.keymap.set('n', '<leader>Q', ':wa<CR>:qa!<CR>', {})

vim.keymap.set('n', '<leader>l', '<C-w>l', {})
vim.keymap.set('n', '<leader>h', '<C-w>h', {})
vim.keymap.set('n', '<leader>k', '<C-w>k', {})
vim.keymap.set('n', '<leader>j', '<C-w>j', {})

vim.keymap.set('n', '<leader>n', '<C-w>v', {})
vim.keymap.set('n', '<leader>m', '<C-w>s', {})

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {})

vim.keymap.set('', '<C-k>', '{', {})
vim.keymap.set('', '<C-j>', '}', {})
vim.keymap.set('n', 'K', 'kddpkJ', {})


--lazy--
local lazypath = vim.fn.stdpath('data') .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' } },
    { 'nvim-tree/nvim-tree.lua' },
    --lsp_zero--
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    --color--
    --{ "catppuccin/nvim", name = "catppuccin" },
    --{ 'rose-pine/neovim', as = 'rose-pine' },
    { 'rebelot/kanagawa.nvim' },
}

local opts = {}

require('lazy').setup(plugins, opts)


--telescope--
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})


--nvim-tree--
require("nvim-tree").setup({
    sort = { sorter = "case_sensitive", },
    view = { width = 10000 },
    filters = { dotfiles = false, },
    actions = { open_file = { quit_on_open = true, }, },
    renderer = {
        icons = {
            show = { file = false, folder = true, folder_arrow = false, git = false },
            glyphs = {
                folder = { default = '/', open = '/', empty = '~', empty_open = '~' },
                bookmark = '|',
            },
            padding = "",
        },
    },
})

vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeFocus, {})


--lsp_zero--
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


--color_scheme--

--vim.cmd.colorscheme('catppuccin')
--vim.cmd.colorscheme('rose-pine')
vim.cmd.colorscheme('kanagawa-wave')
