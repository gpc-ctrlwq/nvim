local lsp = require('lsp-zero').preset({})

local cmp = require('cmp')
--local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	--['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	--['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<Tab>'] = cmp.mapping.confirm({ select = true }),
})

lsp.setup_nvim_cmp({ mapping = cmp_mappings })

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr, remap = false })
end)


-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

lsp.ensure_installed({
	'tsserver',
	'eslint',
})
