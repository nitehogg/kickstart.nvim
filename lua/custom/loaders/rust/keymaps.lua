local bufnr = vim.api.nvim_get_current_buf();

vim.keymap.set("n", "<leader>cr",
  function()
    vim.cmd.RustLsp('codeAction')
  end, {
    remap = false,
    silent = true,
    expr = true,
    buffer = bufnr,
    desc = "[R]ust Code Action"
  }
)
