local status, saga = pcall(require, "lspsaga")
if (not status) then return end
local keymap = vim.keymap

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  }
})

local diagnostic = require("lspsaga.diagnostic")
local opts = { noremap = true, silent = true }
keymap.set('n', '<leader>kj', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
keymap.set('n', '<leader>kl', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
keymap.set('n', '<leader>kb', '<Cmd>Lspsaga show_buf_diagnostics<CR>', opts)
keymap.set('n', '<leader>kw', '<Cmd>Lspsaga show_workspace_diagnostics<CR>', opts)
keymap.set('n', '<leader>kc', '<Cmd>Lspsaga show_cursor_diagnostics<CR>', opts)
keymap.set('n', '<leader>kk', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap.set('n', '<leader>kv', '<Cmd>Lspsaga lsp_finder<CR>', opts)
keymap.set('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
keymap.set('n', '<leader>kp', '<Cmd>Lspsaga peek_definition<CR>', opts)
keymap.set('n', '<leader>kr', '<Cmd>Lspsaga rename<CR>', opts)

-- code action
local codeaction = require("lspsaga.codeaction")
keymap.set("n", "<leader>ka", function() codeaction:code_action() end, { silent = true })
keymap.set("v", "<leader>ka", function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
  codeaction:range_code_action()
end, { silent = true })
