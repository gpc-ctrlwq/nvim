require('material').setup({
    async_loading = false,

    plugins = {
        -- 'dap'
        'gitsigns'
    },

    custom_highlights = {
        -- cursor colours
    }
})

function SetNVimColourScheme(colour)
    colour = colour or 'material'
    vim.cmd.colorscheme(colour)

    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
end

SetNVimColourScheme('no-clown-fiesta')
