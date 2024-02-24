


vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

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
    { 'kyazdani42/nvim-tree.lua' },
    --lsp_zero
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    --color
    'sts10/vim-pink-moon',
    'wojciechkepka/vim-github-dark',
    { 'rose-pine/neovim', as = 'rose-pine' }
}

local opts = {}

require('lazy').setup(plugins, opts)


--telescope--

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})


--lsp_zero--

local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {},
	handlers = {
		lsp_zero.default_setup,
	},
})


--nvim_tree--

require("nvim-tree").setup{
    sort_by = "case_sensitive",
    view = {
        width = 30,
        number = false,
    },
    renderer = {
        add_trailing = true,
        group_empty = true,
        indent_width = 2,
        indent_markers = {
            inline_arrows = true,
        },
        icons = {
            webdev_colors = false,
            padding = " ",
            show = {
                file = false,
                folder = true,
                folder_arrow = false,
                git = false,
                modified = true,
            },
            glyphs = {
                modified = "*",
                folder = {
                    default = ">",
                    open = "v",
                    empty = "~",
                    empty_open = "~",
                },
            },
        },
    },
}


--color_scheme--

--vim.cmd.colorscheme('ghdark')
vim.cmd.colorscheme('rose-pine')
--vim.cmd.colorscheme('pink-moon')






