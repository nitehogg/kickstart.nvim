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

    lint.linters_by_ft = {
      dockerfile = {} -- hadolint not working.
    };

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true });

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint();
        -- lint.try_lint("cspell"); -- Commenting out until I can test out built in spell checking.
      end,
    });
  end,
};
