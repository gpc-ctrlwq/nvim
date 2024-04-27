-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- fzf
    use { 'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
    use { 'junegunn/fzf.vim' }

    -- colour scheme
    use({ 'marko-cerovac/material.nvim', as = 'material' })
    use({ 'aktersnurra/no-clown-fiesta.nvim', as = 'no-clown-fiesta' })
    use({
        'mcchrish/zenbones.nvim',
        as = 'zenbones',
        requires = { "rktjmp/lush.nvim" }
    })
    use ({ 'projekt0n/github-nvim-theme' })
    use ({ 'p00f/alabaster.nvim', as = 'alabaster' })


    -- lualine, nvim status-line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use('mbbill/undotree')

    -- git
    use('tpope/vim-fugitive')
    use 'lewis6991/gitsigns.nvim'

    -- LSP setup
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- debug adapter protocol
    use 'mfussenegger/nvim-dap'
    use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }

    use 'tpope/vim-surround'
end)
