return {

    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },

    -- example using `opts` for defining servers
    opts = {
        servers = {
            lua_ls = {},
            tailwindcss = {},
            css_variables = {},
            cssls = {},
            html = {},
            ts_ls = {},
            svelte = {},
            pyright = {},
        }
    },

    config = function(_, opts)
        local lspconfig = require('lspconfig')
        require("mason").setup()
        for server, config in pairs(opts.servers) do
            -- passing config.capabilities to blink.cmp merges with the capabilities in your
            -- `opts[server].capabilities, if you've defined it
            config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
            config.capabilities.textDocument.completion.completionItem.snippetSupport = true
            config.capabilities.workspace = {didChangeWatchedFiles = {
                dynamicRegistration = true
            }}
            lspconfig[server].setup(config)
        end

        vim.diagnostic.config({
            -- update_in_insert = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end

}
