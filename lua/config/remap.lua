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
set('n', '<C-w>s', '<C-w>s<C-w>j')
set('n', '<C-w>v', '<C-w>v<C-w>l')

-- buffer nav
set('n', '<leader>n', ':bnext<cr>')
set('n', '<leader>p', ':bprevious<cr>')

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

-- clear search highlight on esc press
set('n', '<esc>', '<esc>:nohl<cr>', { noremap = true })
