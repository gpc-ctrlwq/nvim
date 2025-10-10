return {
    {
        'rmehri01/onenord.nvim',
        config = function()
            vim.cmd.colorscheme 'onenord'
            vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
            vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
        end
    },
--    {
--        "rjshkhr/shadow.nvim",
--        config = function()
--            vim.cmd.colorscheme("shadow")
--            vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
--            vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
--        end,
--    },
--    {
--        "romanaverin/charleston.nvim",
--        config = function()
--            vim.cmd.colorscheme 'charleston'
--            -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
--            -- vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
--        end
--    },
}
