local status, mason = pcall(require, "mason")

if not status then
  return
end

local lspstatus, masonLsp = pcall(require, "mason-lspconfig")

if not lspstatus then
  return
end

mason.setup()
masonLsp.setup()

