require('material').setup({
    async_loading = false,

    plugins = {
        'dap',
        'gitsigns',
        'nvim-cmp',
        'nvim-notify',
    },

    custom_highlights = {
        -- cursor colours
    },

})

function SetNVimColourScheme(colour)
    -- material
    vim.g.material_style = 'darker'

    -- zenbones
    vim.g.italic_comments = false

    -- alabaster
    vim.g.alabaster_dim_comments = true


    vim.cmd.colorscheme(colour)

    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
end

SetNVimColourScheme('alabaster')
