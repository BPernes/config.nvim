return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "ivy"
          }
        }
      }

      vim.keymap.set("n", "<space>sh", require('telescope.builtin').help_tags)
      vim.keymap.set("n", "<space>sf", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<space>sn", function()
        require('telescope.builtin').find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)

      require "config.telescope.multigrep".setup()
    end
  }
}
