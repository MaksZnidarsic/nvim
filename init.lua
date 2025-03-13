


--                           _         
--    ____  ___  ____ _   __(_)___ ___ 
--   / __ \/ _ \/ __ \ | / / / __ `__ \
--  / / / /  __/ /_/ / |/ / / / / / / /
-- /_/ /_/\___/\____/|___/_/_/ /_/ /_/ 


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

vim.keymap.set('n', '<leader>q', ':wa<CR>:qa!<CR>', {})

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

local plugins = {
    --telescope--
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' } },

    --oil.nvim--
    { 'stevearc/oil.nvim' },

    --lsp_zero--
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },

    --color--
    { "catppuccin/nvim", name = "catppuccin" },
}

local opts = {}

require('lazy').setup(plugins, opts)


--telescope--

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})


--oil.nvim--

require('oil').setup({
    watch_for_changes = true,
    view_options = {
        show_hidden = true
    },
    columns = {
        "size"
    },
    keymaps = {
        ["<CR>"] = "actions.select",
        ["<C-s>"] = { "actions.select", opts = { vertical = true } },
        ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
        ["<C-t>"] = { "actions.select", opts = { tab = true } },
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = { "actions.close", mode = "n" },
        ["<C-l>"] = "actions.refresh",
        ["-"] = { "actions.parent", mode = "n" },
        ["_"] = { "actions.open_cwd", mode = "n" },
        ["`"] = { "actions.cd", mode = "n" },
        ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
        ["gs"] = { "actions.change_sort", mode = "n" },
        ["<C-CR>"] = "actions.open_external",
        ["g."] = { "actions.toggle_hidden", mode = "n" },
        ["g\\"] = { "actions.toggle_trash", mode = "n" },
    }
})
vim.keymap.set('n', '<leader>e', vim.cmd.Oil, {})


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


--colorscheme--

require("catppuccin").setup({
    flavour = "mocha",
})

vim.cmd.colorscheme('catppuccin')
