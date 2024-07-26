local nvim_lsp = require('lspconfig')

local module = {}

function module.setup(on_attach, capabilites)
  nvim_lsp.omnisharp.setup {
    on_attach = function(client, bufnr)
      require("custom.loaders.c-sharp.snippets");

      on_attach(client, bufnr);
    end,
    capabilites = capabilites,
  }
end

return module;
