

local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "jedi_language_server",'r_language_server'}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
end


--for _, lsp in ipairs(servers) do
--    lspconfig[lsp].setup {
--        handlers = {['textDocument/publishDiagnostics'] = function(...) end  }
--        }
--end
