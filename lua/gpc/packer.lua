-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP setup
    use {
        'VonHeikemen/lsp-zero.nvim',
        --branch = 'v2.x',
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

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- fzf
    use { 'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
    use { 'junegunn/fzf.vim' }

    -- lualine, nvim status-line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- git
    use 'lewis6991/gitsigns.nvim'

    -- debug adapter protocol
    use 'mfussenegger/nvim-dap'
    use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }

    use 'tpope/vim-surround'

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    -- colourschemes
    use 'marko-cerovac/material.nvim'
    use 'aktersnurra/no-clown-fiesta.nvim'
    use 'AlexvZyl/nordic.nvim'
    use 'rmehri01/onenord.nvim'
    use 'killitar/obscure.nvim'
end)
