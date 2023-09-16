local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
-- local servers = { "html", "cssls", "tsserver", "clangd" }
local servers = { "clangd", "cmake", "pylsp", "rust_analyzer", "csharp_ls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- require'lspconfig'.lua_ls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }

-- 
-- lspconfig.pyright.setup { blabla}
