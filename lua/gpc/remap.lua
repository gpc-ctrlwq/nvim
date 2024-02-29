local set = vim.keymap.set

vim.g.mapleader = ' '
set('n', ':bw', '<nop>')

-- treat long lines as line breaks
set('n', 'j', 'gj')
set('n', 'k', 'gk')

-- split nav
set('n', '<C-h>', '<C-w>h')
set('n', '<C-j>', '<C-w>j')
set('n', '<C-k>', '<C-w>k')
set('n', '<C-l>', '<C-w>l')
-- move to split after creating it
set('n', '<C-w>s', '<C-w>s <C-w>j')
set('n', '<C-w>v', '<C-w>v <C-w>l')

-- my file marks
set('n', 'ma', 'mA')
set('n', 'mb', 'mB')
set('n', 'mc', 'mC')
set('n', 'md', 'mD')
set('n', '\'a', '\'A')
set('n', '\'b', '\'B')
set('n', '\'c', '\'C')
set('n', '\'d', '\'D')

set('n', '<leader>e', vim.cmd.Ex)

-- yank to system clipboard
set('n', '<leader>y', '"+y')
set('v', '<leader>y', '"+y')

-- tab navigation
set('n', '<leader>1', '1gt')
set('n', '<leader>2', '2gt')
set('n', '<leader>3', '3gt')
set('n', '<leader>4', '4gt')
set('n', '<leader>5', '5gt')
set('n', '<leader>6', '6gt')
set('n', '<leader>7', '7gt')
set('n', '<leader>8', '8gt')
set('n', '<leader>9', '9gt')

