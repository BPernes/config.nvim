vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- QuickFix nav
vim.keymap.set("n", "<C-A-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-A-k>", "<cmd>cprev<CR>")

vim.keymap.set("n", "<space>v", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<space>w", "<cmd>:w<CR>")
vim.keymap.set("n", "-", "<cmd>Ex<CR>")

--Global settings
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.guicursor = "n-v-c-i:block"
