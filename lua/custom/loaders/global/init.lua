-- Handeled in init.lua.
-- vim.opt.termguicolors = true

vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.opt.cursorline = true

vim.g.markdown_fenced_languages = {
  "ts=typescript"
}

-- Recommended by auto-session
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.opt.hlsearch = true

require('custom.loaders.global.keymaps');
require('custom.loaders.global.autocommands');
