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
  use 'nvim-tree/nvim-web-devicons'
  use('nvim-telescope/telescope-file-browser.nvim')
  use('nvim-lua/plenary.nvim')
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('williamboman/mason.nvim', { run = ':MasonUpdate' }) -- Package manager helper
  use('williamboman/mason-lspconfig.nvim')                 -- Bridge mason with lspconfig
  use('mhartington/oceanic-next')                          -- Color Theme
  use('ThePrimeagen/harpoon')                              -- quick file navigation
  use('mbbill/undotree')                                   -- file edition history like git
  use('tpope/vim-commentary')                              -- easy way to comment code
  use('tpope/vim-fugitive')
  use('hoob3rt/lualine.nvim')                              -- Statusline
  use('neovim/nvim-lspconfig')                             -- LSP (Language Server Protocol)
  use('onsails/lspkind-nvim')                              -- vscode-like pictograms
  use('hrsh7th/cmp-buffer')                                -- nvim-cmp source for buffer words
  use('hrsh7th/cmp-nvim-lsp')                              -- nvim-cmp source for neovim's built-in LSP
  use('hrsh7th/nvim-cmp')                                  -- Completion
  use('L3MON4D3/LuaSnip')
  use('windwp/nvim-autopairs')
  use('windwp/nvim-ts-autotag')
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'glepnir/lspsaga.nvim'            -- LSP UIs
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      -- { 'neovim/nvim-lspconfig' }, -- Required
      -- {
      --                                -- Optional
      --   'williamboman/mason.nvim',
      --   run = function()
      --     pcall(vim.cmd, 'MasonUpdate')
      --   end,
      -- },
      -- { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      -- { 'hrsh7th/nvim-cmp' },     -- Required
      -- { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      -- { 'L3MON4D3/LuaSnip' }, -- Required
    }
  }
end)
