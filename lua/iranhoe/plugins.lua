local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorschemes
  use('mhartington/oceanic-next') -- Color Theme
  use 'nvim-tree/nvim-web-devicons'
  use('nvim-lua/plenary.nvim')

  -- telescope plugins
  use('nvim-telescope/telescope-file-browser.nvim')
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Treesitter plugins
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use('onsails/lspkind-nvim')           -- vscode-like pictograms
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  -- use {
  --   'glepnir/lspsaga.nvim',
  --   commit = "ea053bebfd2cc7e8aad97cc2935db246768857ea"
  -- }

  -- ui
  use('hoob3rt/lualine.nvim') -- Statusline
  use 'norcalli/nvim-colorizer.lua'
  use 'akinsho/nvim-bufferline.lua'

  use('ThePrimeagen/harpoon')      -- quick file navigation
  use('mbbill/undotree')           -- file edition history like git
  use('tpope/vim-commentary')      -- easy way to comment code
  use('tpope/vim-fugitive')
  use('MunifTanjim/prettier.nvim') --  Prettier Plugin for Neovim's built-in LSP
  use('windwp/nvim-autopairs')
  use('windwp/nvim-ts-autotag')
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- git
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  -- use 'github/copilot.vim'

  use("mfussenegger/nvim-dap") -- debugger
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- required
      {
        -- optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'masonupdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- optional

      -- autocompletion
      { 'hrsh7th/nvim-cmp' },     -- required
      { 'hrsh7th/cmp-nvim-lsp' }, -- required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }
end)
