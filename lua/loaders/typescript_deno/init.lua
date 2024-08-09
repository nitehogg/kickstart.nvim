local nvim_lsp = require('lspconfig')

local module = {}

function module.setup(on_attach, capabilites)
  nvim_lsp.denols.setup {
    on_attach = function(client, bufnr)
      if (vim.fn.filereadable("./deno.jsonc") == 0)
      then
        return;
      end

      require("loaders.typescript_node.snippets");

      on_attach(client, bufnr);
    end,
    capabilites = capabilites,
    root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
  }
end

return module;
