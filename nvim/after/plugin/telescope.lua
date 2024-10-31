require("telescope").setup({
  defaults = {
    layout_config = {
      horizontal = {
        preview_cutoff = 0,
      },
    },
  },
})
local utils = require("telescope.utils")
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>c', builtin.colorscheme, {})
