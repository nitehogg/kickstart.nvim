require("conform").setup({
  -- Define your formatters
  formatters_by_ft = {
    -- lua = { "stylua" },
    -- python = { "ruff" },
    javascript = { { "local_prettier" } },
    -- javascriptreact = { { "eslint" } },
    typescript = { { "local_prettier" } },
    -- typescriptreact = { { "eslint" } },
  },
  -- Set up format-on-save
  format_on_save = { timeout_ms = 500, lsp_fallback = true },
  notify_on_error = false,
  -- Customize formatters
  formatters = {
    local_prettier = {
      command = "node_modules/.bin/prettier",
      args = { "--stdin-filepath", "$FILENAME" },
      stdin = true,
      cwd = require("conform.util").root_file({ "package.json" }),
      require_cwd = true,
    },
    local_eslint = {
      command = "node_modules/.bin/eslint",
      args = { "--stdin-filename", "$FILENAME" },
      stdin = true,
      cwd = require("conform.util").root_file({ "package.json" }),
      require_cwd = true,
    }
  }
});
