local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
    "c",
    "lua",
    "vim",
    -- "help",
    "query",
    "javascript",
    "typescript",
    "c_sharp",
    "cpp",
    "css",
    "go",
    "html",
    "scss",
    "rust",
    "tsx",
    "json",
    "markdown",
    "markdown_inline",
  },

  autotag = {
    enable = true,
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  indent = {
    enable = true,
    disable = {},
  },

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
}
