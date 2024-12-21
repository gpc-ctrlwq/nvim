return {
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({
                vim.keymap.set('n', '<leader>b', require('fzf-lua').buffers);
                vim.keymap.set('n', '<leader>f', require('fzf-lua').git_files);
                vim.keymap.set('n', '<leader>F', require('fzf-lua').files);
                vim.keymap.set('n', '<leader>c', require('fzf-lua').quickfix);
            })
        end
    },
}
