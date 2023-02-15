local nullls = require('null-ls')

local formatting = nullls.builtins.formatting
local diagnostics = nullls.builtins.diagnostics
local codeactions = nullls.builtins.code_actions

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

nullls.setup({
  sources = {
    formatting.prettier,
    formatting.stylua,
    -- diagnostics.cspell,
    codeactions.eslint_d,
    diagnostics.eslint_d.with({
      condition = function(utils)
        return utils.root_has_file(".eslintrc.js")
      end
    })
  }
})

local masonNullLs = require("mason-null-ls")
masonNullLs.setup({
  ensure_installed = {},
  automatic_installation = true,
  automatic_setup = true,
})

vim.cmd('map <Leader>lf :lua vim.lsp.buf.format()<CR>')
