


local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'clangd',
    'rust_analyzer',
})

lsp.setup()





