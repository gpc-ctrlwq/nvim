return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    -- use a release tag to download pre-built binaries
    version = 'v0.8.*',

    opts = {
        keymap = {
            preset = 'default',
            ['<tab>'] = {'accept'};
        },
    }
}
