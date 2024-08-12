local nvim_lsp = require('lspconfig')

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.cs" },
  callback = function()
    require("loaders.c-sharp.snippets");
  end,
});

local module = {}

function module.setup_lsp(on_attach, capabilites)
  nvim_lsp.omnisharp.setup {
    on_attach = on_attach,
    capabilites = capabilites,
  }
end

return module;
