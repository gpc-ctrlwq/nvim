return {
    {
        "arborist-ts/arborist.nvim",
        config = function()
            require("arborist").setup({
                update_cadence = "weekly",
                install_popular = false,
                ensure_installed = { 'html', 'css', 'javascript', 'typescript', "c", "lua", "vim", "vimdoc", "query", "zig" },
            })
        end
    }
}
