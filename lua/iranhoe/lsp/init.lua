local status, _ = pcall(require, "lspconfig")
if not status then
  return
end

require("iranhoe.lsp.lsp-installer")
require("iranhoe.lsp.handlers").setup()
