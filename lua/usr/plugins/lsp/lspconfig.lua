local status, lspconfig = pcall(require, "lspconfig")

if not status then
  return 
end

local cmpStatus, cmp = pcall(require, "cmp_nvim_lsp")

if not cmpStatus then
  return
end

local capabilities = cmp.default_capabilities()
lspconfig.tsserver.setup({
  capabilities = capabilities
})

lspconfig.volar.setup({
  capabilities = capabilities
})

lspconfig.lemminx.setup({
  capabilities = capabilities
})

lspconfig.yamlls.setup({
  capabilities = capabilities
})

lspconfig.cssmodules_ls.setup({
  capabilities = capabilities
})

lspconfig.html.setup({
  capabilities = capabilities
})

