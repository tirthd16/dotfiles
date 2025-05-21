return {
    { 'echasnovski/mini.indentscope', version = '*' },
    { "nvchad/volt",                  lazy = true },
    {
        "nvchad/minty",
        cmd = { "Shades", "Huefy" },
    },
    { "lewis6991/gitsigns.nvim" },
{
    "aktersnurra/no-clown-fiesta.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("no-clown-fiesta").setup({
            -- Your existing style configurations (if any)
        })
        vim.cmd.colorscheme('no-clown-fiesta')

        -- Override the DiffText highlight group
        vim.api.nvim_set_hl(0, 'DiffText', {
            fg = "#ffffff",  -- Your desired foreground color
            bg = "#768bb5",  -- Your desired background color
            -- Add other style options like 'bold', 'italic' if needed
        })
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
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
    {'sindrets/diffview.nvim'},
}
