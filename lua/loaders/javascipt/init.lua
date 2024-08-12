vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.js" },
  callback = function()
    require("loaders.javascipt.snippets");
  end,
});
