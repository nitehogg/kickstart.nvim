-- Configs for nvim-tree.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.opt.cursorline = true

vim.g.markdown_fenced_languages = {
  "ts=typescript"
}

-- Recommended by auto-session
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.opt.hlsearch = true
vim.opt.number = true
vim.opt.signcolumn = "yes"
