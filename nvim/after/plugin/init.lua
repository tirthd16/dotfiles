local harpoon = require("harpoon")
require('lualine').setup {options = { theme = 'no-clown-fiesta'},
  sections = {
    lualine_a = {'filesize'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
}

-- REQUIRED
harpoon:setup({
  settings = {
    save_on_toggle = true,
  }
})
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>w", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>u", '<Cmd>UndotreeToggle<CR>')

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)


-- Global variables
vim.g.magma_automatically_open_output = false
vim.g.magma_image_provider = "ueberzug"

