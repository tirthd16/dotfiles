return {
    {
        "luukvbaal/statuscol.nvim",
        config = function()
            local builtin = require("statuscol.builtin")
            require("statuscol").setup({
                -- configuration goes here, for example:
                relculright = true,
                segments = {
                    { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
                    {
                        sign = { namespace = { "diagnostic/signs" }, maxwidth = 2, auto = true },
                        click = "v:lua.ScSa"
                    },
                    { text = { builtin.lnumfunc }, click = "v:lua.ScLa", },
                    {
                        sign = { name = { ".*" }, maxwidth = 2, colwidth = 1, auto = true, wrap = true },
                        click = "v:lua.ScSa"
                    },
                }
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
                show_end = false,
                -- You can customize the highlight color
                -- highlight = "CursorColumn",
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
    {
        'sainnhe/gruvbox-material',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.gruvbox_material_enable_italic = true
            vim.g.gruvbox_material_sign_column_background = 'grey'
            vim.g.gruvbox_material_better_performance = 1
            --vim.cmd.colorscheme('gruvbox-material')
        end
    },
    { 'kmonad/kmonad-vim' },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    { 'tpope/vim-fugitive' },
    { 'ActivityWatch/aw-watcher-vim' },
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    { 'projekt0n/github-nvim-theme' },
    { 'sindrets/diffview.nvim' },
    { 'tpope/vim-fugitive' },
    { 'junegunn/gv.vim' },
    { 'mbbill/undotree' },
    { 'akinsho/git-conflict.nvim',  version = "*",         config = true },
    { 'nvim-tree/nvim-web-devicons' },
    { 'feline-nvim/feline.nvim',    branch = '0.5-compat' },
    { 'chrisbra/Colorizer',         cmd = "ColorHighlight" },
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
