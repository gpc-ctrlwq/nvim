return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'mason-org/mason-lspconfig.nvim',
    },
    opts = {
        inlay_hints = { enabled = true },
    },
    config = function ()
    end,
}
