local set = vim.opt

-- general
set.autoread = true
set.wrap = true
set.swapfile = false
set.backup = false
set.undofile = true
--set.undodir = os.getenv('$home') .. './vim/undodir'
set.updatetime = 50
vim.g['filetype'] = 'plugin on'
set.syntax = 'on'
set.foldmethod = 'indent'

-- appearance
set.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait10-blinkoff10-blinkon10'
--set.guicursor = ''
set.termguicolors = true
set.number = true
set.relativenumber = true

-- netrw
vim.g['netrw_liststyle'] = '3'
vim.g['netrw_banner'] = '0'

-- ui
set.lazyredraw = true
set.showmatch = true
set.mat = 2
set.so = 4
set.showcmd = true
set.showmode = true

-- search
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = false

-- indenting
set.expandtab = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.autoindent = true
set.smartindent = true
set.smarttab = true
set.backspace = '2'
