local keymaps = require("custom.configs.keymaps")
local autocommands = require("custom.configs.autocommands")
local gitsigns = require("custom.configs.gitsigns")
local lspconfig = require("custom.configs.nvim_lspconfig")

local module = {}

function module.setup(on_attach)
  vim.opt.spelllang = "en_us"
  vim.opt.spell = true

  vim.opt.cursorline = true
  vim.opt.hlsearch = true

  vim.g.markdown_fenced_languages = {
    "ts=typescript"
  }

  keymaps.setup(on_attach);
  autocommands.setup(on_attach);
  gitsigns.setup(on_attach);
  lspconfig.setup(on_attach);
end

return module;
