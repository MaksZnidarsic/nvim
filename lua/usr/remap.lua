


vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("t", "<esc>", "<C-\\><C-n>")

vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>c", "<C-w>c")
vim.keymap.set("n", "<leader>v", "<C-w>v")

vim.keymap.set("", "<C-k>", "{")
vim.keymap.set("", "<C-j>", "}")





