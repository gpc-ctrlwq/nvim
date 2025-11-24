return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'mason-org/mason-lspconfig.nvim',
    },
    opts = {
        inlay_hints = { enabled = true },
    },
    config = function ()
        vim.lsp.config('zls', {
            settings = {
                zls = {
                    enable_argument_placeholders = false,
                }
            }
        })
    end,
}
