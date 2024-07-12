local nvim_lsp = require('lspconfig')

local module = {}

function module.setup(on_attach, capabilites)
  nvim_lsp.omnisharp.setup {
    on_attach = on_attach,
    capabilites = capabilites,
  }
end

return module;
