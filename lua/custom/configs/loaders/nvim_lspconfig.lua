local nvim_lsp = require('lspconfig')

local module = {}

function module.setup(on_attach)
  nvim_lsp.denols.setup {
    on_attach = on_attach,
    root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
  }

  nvim_lsp.tsserver.setup {
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false;
      client.server_capabilities.documentRangeFormattingProvider = false;
      on_attach(client, bufnr);
    end,
    root_dir = nvim_lsp.util.root_pattern("package.json"),
    single_file_support = false
  }
end

return module;
