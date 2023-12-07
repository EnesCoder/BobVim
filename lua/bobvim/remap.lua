vim.g.mapleader = " "

--vim.keymap.set("n", "<leader>x", vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "J", ":m '<-2<cr>gv=gv")

