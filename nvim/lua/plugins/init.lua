return {
 { "nvchad/volt", lazy = true },
{
  "nvchad/minty",
  cmd = { "Shades", "Huefy" },
},
    { "lewis6991/gitsigns.nvim" },
    {
        dir = '~/.config/nvim/lua/projects/statusline.lua',
        event = 'UIEnter',
        config = function()
            require('projects.statusline').setup {
                single_cursorline = true,
                flavour = 'grayscale',
            }
        end

    },
    {
        "luukvbaal/statuscol.nvim",
        config = function()
            local builtin = require("statuscol.builtin")
            require("statuscol").setup({
                segments = {
                    {
                        text = { builtin.lnumfunc, " " },
                        condition = { true, builtin.not_empty },
                        click = "v:lua.ScLa",
                    },
                    { text = { "%s" }, click = "v:lua.ScSa" },
                },
                relculright = true,
            })
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            scope = {
                enabled = true,
                show_start = true,
                show_end = true,
                priority = 500
            }
        }
    },
    {
        "aktersnurra/no-clown-fiesta.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme('no-clown-fiesta')
        end
    },
    { 'kmonad/kmonad-vim' },
    { 'tpope/vim-fugitive' },
    { 'ActivityWatch/aw-watcher-vim' },
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    { 'sindrets/diffview.nvim' },
    { 'tpope/vim-fugitive' },
    { 'junegunn/gv.vim' },
    { 'mbbill/undotree' },
    { 'akinsho/git-conflict.nvim',  version = "*",        config = true },
    { 'nvim-tree/nvim-web-devicons' },
    { 'feline-nvim/feline.nvim',    branch = '0.5-compat' },
    {
        'chrisbra/Colorizer',
        config = function()
            vim.cmd('ColorHighlight')
        end
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" }
}
