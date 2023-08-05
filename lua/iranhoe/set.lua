-- not sure why I need this.
vim.cmd('autocmd!')
local opt = vim.opt;

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

opt.guicursor = ""
opt.shell = 'zsh'

opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"

opt.clipboard = 'unnamedplus'

-- Highlights
-- vim.opt.cursorline = true
-- vim.opt.winblend = 0
-- vim.opt.wildoptions = 'pum'
-- vim.opt.pumblend = 5
-- vim.opt.background = 'dark'
