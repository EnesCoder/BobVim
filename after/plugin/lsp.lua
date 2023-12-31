local lsp_zero = require('lsp-zero')
lsp_zero.preset("recommended")

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({
    buffer = bufnr, -- The buffer is the current text which is being edited
    preserve_mappings = false
  })
end)

local cmp_nvim_lsp = require "cmp_nvim_lsp"
require("lspconfig").clangd.setup {
  on_attach = on_attach,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

