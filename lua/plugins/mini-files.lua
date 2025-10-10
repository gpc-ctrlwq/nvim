return {
    'echasnovski/mini.files',
    version = '*',
    config = function()
        require('mini.files').setup()
        vim.keymap.set('n', '<leader>e', ':lua MiniFiles.open()<cr>')

        -- relative line numbers
        vim.api.nvim_create_autocmd('User', {
            pattern = 'MiniFilesWindowUpdate',
            callback = function(args)
                local win = vim.wo[args.data.win_id]
                win.number = true
                win.relativenumber = true
            end,
        })
    end
}
