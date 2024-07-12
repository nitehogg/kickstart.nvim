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
    local lint = require("lint");
    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true });

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint();
      end,
    });
  end,
};
