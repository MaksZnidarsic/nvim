


vim.pack.add({
    'https://github.com/stevearc/oil.nvim'
})


require('oil').setup({
    watch_for_changes = true,
    view_options = {
        show_hidden = true
    },
    columns = {
        "size"
    },
    keymaps = {
        ["<c-cr>"] = "actions.open_external",
    }
})

vim.keymap.set('n', '<leader>e', vim.cmd.Oil, {})
