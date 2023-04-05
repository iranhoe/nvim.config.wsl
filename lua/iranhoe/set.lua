-- not sure why I need this.
vim.cmd('autocmd!')

-- Settings to review
-- vim.scriptencoding = 'utf-8'
-- vim.opt.encoding = 'utf-8'
-- vim.opt.fileeconding = 'utf-8'

-- vim.wo.number = true
--
-- vim.opt.title = true
-- vim.opt.autoindent = true
-- vim.opt.showcmd = true
-- vim.optcmdheight = 1
-- vim.opt.laststatus = 2
-- vim.opt.backupskip = 'tmp/*'
-- vim.opt.inccommand = 'split'
-- vim.opt.ignorecase = true
-- vim.opt.breakindent = true
-- vim.opt.backspace = 'start,eol,ident'
-- vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
-- vim.opt.wildignore:append { '*/node_modules/*' }
-- Turn off paste mode when leaving insert
-- vim.api.nvim_create_autocmd("insertLeave", {
    -- pattern = '*',
    -- command = "set nopaste"
-- })
-- Add asterisks in block comments
-- vim.opt.formatoptions:appnd { 'r' }

vim.opt.guicursor = ""
vim.opt.shell = 'fish'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.clipboard = 'unnamedplus'

-- Highlights
-- vim.opt.cursorline = true
-- vim.opt.winblend = 0
-- vim.opt.wildoptions = 'pum'
-- vim.opt.pumblend = 5
-- vim.opt.background = 'dark'

