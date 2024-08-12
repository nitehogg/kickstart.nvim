local nvim_lsp = require('lspconfig')

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.ts" },
  callback = function()
    require("loaders.typescript_node.snippets");
  end,
});

local module = {}

function module.setup_lsp(on_attach, capabilites)
  nvim_lsp.denols.setup {
    on_attach = function(client, bufnr)
      if (vim.fn.filereadable("./deno.jsonc") == 0)
      then
        return;
      end

      on_attach(client, bufnr);
    end,
    capabilites = capabilites,
    root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
  }
end

return module;
