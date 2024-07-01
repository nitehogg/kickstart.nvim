local module = {}

function module.setup(on_attach)
  vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
end

return module;
