return {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set("n", "<space>gs", vim.cmd.Git)
      vim.keymap.set("n", "<space>gc", "<cmd>Git commit<CR>")
      vim.keymap.set("n", "<space>gp", "<cmd>Git push<CR>")
    end
  }
}
