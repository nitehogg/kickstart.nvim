local nvim_lsp = require('lspconfig');

local module = {}

function module.setup(on_attach, capabilites)
  nvim_lsp.tsserver.setup {
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false;
      client.server_capabilities.documentRangeFormattingProvider = false;

      require("custom.loaders.typescript_node.snippets");

      local conform = require("conform");
      local lint = require("lint");

      conform.formatters.local_prettier = {
        command = "node_modules/.bin/prettier",
        args = { "--stdin-filepath", "$FILENAME" },
        stdin = true,
        cwd = require("conform.util").root_file({ "package.json" }),
        require_cwd = true,
      };
      conform.formatters_by_ft.typescript = { { "local_prettier" } };

      -- This needs to be cloned.
      lint.linters.local_eslint = lint.linters.eslint;
      lint.linters.local_eslint.cmd = "node_modules/.bin/eslint";

      lint.linters_by_ft.typescript = { "local_eslint" };

      on_attach(client, bufnr);
    end,
    capabilites = capabilites,
    root_dir = nvim_lsp.util.root_pattern("package.json"),
    single_file_support = false,
  }
end

return module;
