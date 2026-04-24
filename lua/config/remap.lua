local set = vim.keymap.set

vim.g.mapleader = ' '

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

-- my file marks
set('n', 'ma', 'mA')
set('n', 'ms', 'mS')
set('n', 'md', 'mD')
set('n', 'mf', 'mF')
set('n', '\'a', '`A')
set('n', '\'s', '`S')
set('n', '\'d', '`D')
set('n', '\'f', '`F')

-- centre jumps
set('n', '<C-o>', '<C-o>zz')
set('n', '<C-i>', '<C-i>zz')

set('n', '<leader>e', vim.cmd.Ex)

-- yank to system clipboard
set('n', '<leader>y', '"+y')
set('v', '<leader>y', '"+y')

-- clear search highlight on esc press
set('n', '<esc>', '<esc>:nohl<cr>', { noremap = true })

-- grep
set('n', '<leader>g', ':sil lgr -i ')

-- make
set('n', '<leader>m', ':sil make ')

local function toggleQuickfix()
    local windows = vim.fn.getwininfo()
    for _, win in pairs(windows) do
        if win["quickfix"] == 1 then
            vim.cmd.cclose()
            return
        end
    end
    vim.cmd.copen()
end

local function toggleLocation()
    local windows = vim.fn.getwininfo()
    for _, win in pairs(windows) do
        if win["loclist"] == 1 then
            vim.cmd.lclose()
            return
        end
    end
    vim.cmd('silent! lopen') -- lopen errors if loclist is empty
end

-- toggle lists
set('n', '<leader>q', toggleQuickfix, { desc = "Toggle quickfix window" })
set('n', '<leader>l', toggleLocation, { desc = "Toggle location list window" })
