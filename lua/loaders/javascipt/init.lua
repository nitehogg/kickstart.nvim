require("loaders.javascript.snippets");

local conform = require("conform");
local lint = require("lint");

conform.formatters.local_prettier = {
  command = "node_modules/.bin/prettier",
  args = { "--stdin-filepath", "$FILENAME" },
  stdin = true,
  cwd = require("conform.util").root_file({ "package.json" }),
  require_cwd = true,
};
conform.formatters_by_ft.javascript = { { "local_prettier" } };

-- This needs to be cloned.
lint.linters.local_eslint = lint.linters.eslint;
lint.linters.local_eslint.cmd = "node_modules/.bin/eslint";

lint.linters_by_ft.javascript = { "local_eslint" };
