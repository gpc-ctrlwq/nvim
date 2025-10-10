return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {'html', 'css', 'javascript', 'typescript', "c", "lua", "vim", "vimdoc", "query", "zig" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
