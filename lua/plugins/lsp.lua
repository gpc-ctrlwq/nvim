return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
    },
    opts = {
        inlay_hints = { enabled = true },
    },
}
