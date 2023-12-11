local default_opts = { noremap = true, silent = true }

-- figure out some way to extend default options in lua
vim.keymap.set("n", "<leader>l", ":set relativenumber<CR>", {
  noramp = true,
  silent = true,
  desc = "Use Relative Number"
})
-- vim.keymap.set("n", "<leader>lx", ":set norelativenumber<CR>", {
--   noramp = true,
--   silent = true,
--   desc = "Disable Relative Number"
-- })

-- vim.keymap.set("n", "<leader>l",
--   function()
--    return vim.o.relativenumber and ":set norelativenumber<CR>" or ":set relativenumber<CR>"
--   end, {
--   noramp = true,
--   silent = true,
--   desc = "Toggle Relative Number"
-- })





-- vim.keymap.set("n", "<leader>f", ":set hlsearch<CR>", {
--   noramp = true,
--   silent = true,
--   desc = "Disable Relative Number"
-- })
-- vim.keymap.set("n", "<leader>fx", ":nohlsearch<CR>", {
--   noramp = true,
--   silent = true,
--   desc = "Disable Relative Number"
-- })

-- vim.keymap.set("n", "<leader>f",
--   function()
--     return vim.o.hlsearch and ":set nohlsearch<CR>" or ":set hlsearch<CR>"
--   end, {
--   noramp = true,
--   silent = true,
--   desc = "Toggle Search Highlight"
-- })


