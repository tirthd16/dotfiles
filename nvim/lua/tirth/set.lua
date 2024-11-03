vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "auto"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.clipboard = 'unnamedplus'
vim.opt.virtualedit = 'block' -- enable highlighting empty spaces
vim.opt.showmode = false      -- mode will be shown by statusline
vim.opt.cmdheight = 0         -- only need the commandline when typing command
vim.opt.fillchars = {
    eob = ' ',                 -- removes annoying tilde at the bottom of short files
    fold = '-',                -- replace dots with horizontal line to indicate folded sections
    stl = '-',
}
vim.opt.ignorecase = true -- make search case-insensitive
vim.opt.smartcase = true  -- but if our search contains uppercase(s) it becomes case-sensitive
