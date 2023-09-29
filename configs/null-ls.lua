
local augroup = vim.api.nvim_create_augroup("LspFormatting",{})
local null_ls = require('null-ls')




local opts = {
  sources = {
   --for python

    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.mypy,
   
    null_ls.builtins.diagnostics.ruff,
    

    --for html
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.markuplint,
    --for css/js
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.stylelint,
    
    null_ls.builtins.diagnostics.djlint,
    null_ls.builtins.formatting.djlint,
  },
  on_attach = function (client,bufnr)
    if client.supports_method('textDocument/formatting') then 
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd('BufWritePre',{
        group = augroup,
        buffer = bufner,
        callback = function ()
          vim.lsp.buf.format({bufnr = bufnr})
          
        end,
      })
    end 
  end
}
return opts
