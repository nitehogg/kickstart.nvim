return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    {
      "<leader>l",
      function()
        require("lint").try_lint();
      end,
      mode = "",
      desc = "Lint buffer",
    }
  },
  config = function()
    local isnodeproject = vim.fn.filereadable("./package.json");

    if (not isnodeproject)
    then
      return;
    end

    local lint = require("lint");

    lint.linters_by_ft = {
      javascript = { "local_eslint" },
      typescript = { "local_eslint" },
    };

    -- This needs to be cloned.
    lint.linters.local_eslint = lint.linters.eslint;
    lint.linters.local_eslint.cmd = "node_modules/.bin/eslint";

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true });

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint();
      end,
    });
  end,
};
