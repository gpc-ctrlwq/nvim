return {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'Saghen/blink.cmp',
    },
    config = function ()
        require('mason-lspconfig').setup({
            ensure_installed = {'lua_ls', 'zls', 'ts_ls', 'clangd', 'sqlls'},
        })

        local capabilities = require('blink.cmp').get_lsp_capabilities();

        require('mason-lspconfig').setup_handlers {
            -- default handler, do not manually set up servers in lspconfig
            function (server_name)
                require("lspconfig")[server_name].setup {capabilities = capabilities}
            end,

            -- dedicated handlers go here
           ["lua_ls"] = function ()
               local lspconfig = require("lspconfig")
               lspconfig.lua_ls.setup {
                   settings = {
                       Lua = {
                           diagnostics = {
                               globals = { "vim" }
                           }
                       }
                   }
               }
           end,

        }
    end
}
