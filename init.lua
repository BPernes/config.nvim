print("advent of neovim")

require("config.lazy")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Global settings
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.guicursor="n-v-c-i:block"

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying text)',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
