return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require('oil').setup({
            delete_to_trash = true,
            win_options = {signcolumn = 'yes'}
        })
        vim.keymap.set('n', '<leader>e', '<CMD>Oil<CR>')
    end
}
