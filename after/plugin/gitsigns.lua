require('gitsigns').setup {
    on_attach = function()
        local gs = package.loaded.gitsigns

        -- Navigation
        vim.keymap.set('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
        end, { expr = true })

        vim.keymap.set('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
        end, { expr = true })

        -- actions
        vim.keymap.set('n', '<leader>hr', gs.reset_hunk)
        vim.keymap.set('n', '<leader>hb', function() gs.blame_line { full = true } end)
    end
}
